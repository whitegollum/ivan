# Scripts de Compilación EPUB

Este directorio contiene scripts para compilar automáticamente los capítulos de la novela en formato EPUB usando Pandoc.

## 📋 Requisitos Previos

1. **Pandoc** debe estar instalado y disponible en el PATH del sistema
   - Descarga desde: https://pandoc.org/installing.html
   - En Windows: `winget install --id JohnMacFarlane.Pandoc`

## 🚀 Uso

### PowerShell (Recomendado)

```powershell
# Compilación básica
.\compile_epub.ps1

# Con parámetros personalizados
.\compile_epub.ps1 -OutputName "mi_novela" -Title "Mi Título" -Author "Mi Nombre"

# Con información detallada
.\compile_epub.ps1 -Verbose
```

### Batch/CMD

```batch
# Ejecutar el script
compile_epub.bat
```

## 📁 Archivos

- **`compile_epub.ps1`**: Script principal de PowerShell con funcionalidades avanzadas
- **`compile_epub.bat`**: Script batch para compatibilidad con sistemas antiguos
- **`metadata.yaml`**: Archivo de metadatos opcional para personalizar el EPUB

## 🔧 Personalización

### Metadatos

Edita el archivo `metadata.yaml` para personalizar:
- Título y autor
- Descripción de la obra
- Idioma y fecha de publicación
- Imagen de portada (si está disponible)
- Estilos CSS personalizados

### Parámetros del Script PowerShell

- **`-OutputName`**: Nombre del archivo EPUB de salida (sin extensión)
- **`-Title`**: Título de la obra
- **`-Author`**: Autor de la obra
- **`-Verbose`**: Mostrar información detallada durante la compilación

## 📖 Funcionamiento

1. **Detección**: Busca automáticamente todos los archivos `CAP_*.md`
2. **Ordenación**: Los ordena numéricamente (CAP_01, CAP_02, etc.)
3. **Verificación**: Comprueba que Pandoc está instalado
4. **Metadatos**: Usa `metadata.yaml` si existe, o metadatos básicos por defecto
5. **Compilación**: Ejecuta Pandoc con las opciones optimizadas para EPUB
6. **Resultado**: Genera el archivo EPUB con tabla de contenidos

## ✨ Características

- 📚 **Detección automática** de capítulos
- 🔄 **Ordenación inteligente** por número de capítulo
- 📋 **Tabla de contenidos** automática
- 🎨 **Metadatos personalizables**
- ✅ **Verificación de dependencias**
- 📊 **Información del archivo generado**
- 🔍 **Modo verbose** para diagnósticos

## 🐛 Solución de Problemas

### Pandoc no encontrado
```
❌ Error: Pandoc no está instalado o no está en el PATH
```
**Solución**: Instalar Pandoc y agregarlo al PATH del sistema

### No se encontraron capítulos
```
❌ No se encontraron archivos de capítulos (CAP_*.md)
```
**Solución**: Verificar que los archivos de capítulos estén en el directorio actual y sigan el patrón `CAP_*.md`

### Error de compilación
**Solución**: Ejecutar con `-Verbose` para ver detalles del error y verificar que todos los archivos markdown estén bien formateados

## 📚 Salida

El script genera un archivo EPUB optimizado con:
- Capítulos organizados secuencialmente
- Tabla de contenidos navegable
- Metadatos completos
- Formato compatible con la mayoría de lectores de eBooks