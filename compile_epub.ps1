# Script de compilación EPUB para la novela Iván - El Mazmorrero
# Utiliza Pandoc para convertir los capítulos markdown a formato EPUB

param(
    [string]$OutputName = "ivan_mazmorras",
    [string]$Title = "Iván - El Mazmorrero",
    [string]$Author = "Generado por IA",
    [switch]$Verbose
)

Write-Host "=== Compilador EPUB - Novela Iván ===" -ForegroundColor Cyan
Write-Host ""

# Verificar que Pandoc está instalado
try {
    $pandocVersion = pandoc --version 2>$null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Pandoc encontrado" -ForegroundColor Green
        if ($Verbose) {
            Write-Host "Versión: $($pandocVersion.Split("`n")[0])" -ForegroundColor Gray
        }
    }
} catch {
    Write-Host "❌ Error: Pandoc no está instalado o no está en el PATH" -ForegroundColor Red
    Write-Host "Por favor instala Pandoc desde: https://pandoc.org/installing.html" -ForegroundColor Yellow
    exit 1
}

# Buscar todos los archivos de capítulos
Write-Host "🔍 Buscando archivos de capítulos..." -ForegroundColor Yellow

$chapterFiles = Get-ChildItem -Path "." -Filter "CAP_*.md" | Sort-Object {
    # Extraer el número del capítulo para ordenar correctamente
    if ($_.Name -match "CAP_(\d+)\.md") {
        [int]$matches[1]
    } else {
        999 # Poner al final si no coincide con el patrón
    }
} | Select-Object -ExpandProperty Name

if ($chapterFiles.Count -eq 0) {
    Write-Host "❌ No se encontraron archivos de capítulos (CAP_*.md)" -ForegroundColor Red
    exit 1
}

Write-Host "📖 Archivos encontrados:" -ForegroundColor Green
$chapterFiles | ForEach-Object { 
    Write-Host "   - $_" -ForegroundColor White
}
Write-Host ""

# Preparar el nombre del archivo de salida
$outputFile = "$OutputName.epub"

# Verificar si existe un archivo de metadatos
$metadataFile = $null
if (Test-Path "metadata.yaml") {
    $metadataFile = "metadata.yaml"
    Write-Host "📋 Usando archivo de metadatos: metadata.yaml" -ForegroundColor Green
} elseif (Test-Path "metadata.yml") {
    $metadataFile = "metadata.yml" 
    Write-Host "📋 Usando archivo de metadatos: metadata.yml" -ForegroundColor Green
}

# Construir el comando de Pandoc
$pandocArgs = @()

# Agregar archivos de entrada uno por uno con rutas absolutas
foreach ($file in $chapterFiles) {
    $fullPath = Resolve-Path $file -ErrorAction SilentlyContinue
    if ($fullPath) {
        $pandocArgs += $fullPath.Path
    } else {
        Write-Host "⚠️  Advertencia: No se pudo resolver la ruta de $file" -ForegroundColor Yellow
        $pandocArgs += $file
    }
}

$pandocArgs += "-o", $outputFile
$pandocArgs += "--to", "epub"

# Agregar metadatos básicos si no hay archivo de metadatos
if ($metadataFile) {
    $pandocArgs += "--metadata-file", $metadataFile
} else {
    $pandocArgs += "--metadata", "title=$Title"
    $pandocArgs += "--metadata", "author=$Author" 
    $pandocArgs += "--metadata", "lang=es"
}

# Agregar opciones adicionales para mejorar el EPUB
$pandocArgs += "--split-level", "1"  # Reemplaza --epub-chapter-level
$pandocArgs += "--toc"
$pandocArgs += "--toc-depth", "2"

# Ejecutar Pandoc
Write-Host "🔨 Compilando EPUB..." -ForegroundColor Yellow
if ($Verbose) {
    Write-Host "Comando: pandoc" -ForegroundColor Gray
    Write-Host "Argumentos:" -ForegroundColor Gray
    foreach ($arg in $pandocArgs) {
        Write-Host "  $arg" -ForegroundColor Gray
    }
    Write-Host ""
}

try {
    # Ejecutar con codificación UTF-8 para evitar problemas con caracteres especiales
    $env:PYTHONIOENCODING = "utf-8"
    $originalEncoding = [Console]::OutputEncoding
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    
    & pandoc @pandocArgs
    $exitCode = $LASTEXITCODE
    
    # Restaurar codificación original
    [Console]::OutputEncoding = $originalEncoding
    
    if ($exitCode -eq 0) {
        Write-Host ""
        Write-Host "✅ ¡Compilación exitosa!" -ForegroundColor Green
        Write-Host "📚 Archivo generado: $outputFile" -ForegroundColor Cyan
        
        # Mostrar información del archivo generado
        if (Test-Path $outputFile) {
            $fileInfo = Get-Item $outputFile
            $fileSizeMB = [math]::Round($fileInfo.Length / 1MB, 2)
            Write-Host "📊 Tamaño: $fileSizeMB MB" -ForegroundColor White
            Write-Host "📅 Fecha: $($fileInfo.LastWriteTime)" -ForegroundColor White
        }
    } else {
        Write-Host "❌ Error durante la compilación (código: $exitCode)" -ForegroundColor Red
        Write-Host "💡 Sugerencias:" -ForegroundColor Yellow
        Write-Host "   - Verifica que todos los archivos .md estén bien formateados" -ForegroundColor Yellow
        Write-Host "   - Ejecuta con -Verbose para ver más detalles" -ForegroundColor Yellow
        Write-Host "   - Revisa que no haya caracteres especiales problemáticos" -ForegroundColor Yellow
        exit 1
    }
} catch {
    Write-Host "❌ Error ejecutando Pandoc: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "💡 Verifica que Pandoc esté correctamente instalado" -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "🎉 ¡Proceso completado!" -ForegroundColor Green