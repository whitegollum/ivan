# Iván — Novela y proceso de generación

Una novela generada con modelos de lenguaje, inspirada en la energía/ritmo de **“Carl El Mazmorrero”** (Matt Dinniman), **sin imitación literal** de tramas, personajes ni prosa.

## 📖 Descripción

Proyecto de generación y redacción de una novela original con voz en 1ª persona, humor negro y mecánicas de “sistema” burocrático. La referencia es **inspiracional** (tono, ritmo, escalada), no un calco.

## 🎯 Objetivo

Crear una experiencia de lectura sorprendente y única, con estructura por niveles/pruebas, ritmo alto y cierre emocional.

## 📁 Estructura del Proyecto

### Novela
- **CAP_01.md** a **CAP_20.md**: capítulos individuales
- **EPILOGO.md**: cierre
- **ivan_mazmorras.epub**: versión compilada en formato eBook

### Documentación de diseño
- **NOVELA_PLAN.md**: plan general y estado por fases
- **NOVELA_ARGUMENTO.md**: argumento y mundo
- **NOVELA_ARCO.md**: arco global y subarcos
- **NOVELA_CAPITULOS.md**: índice y objetivos por capítulo
- **NOVELA_ESTILO.md**: guía de voz y estilo
- **REVISION_COHERENCIA.md**: revisión vs diseño
- **COMPILACION.md**: guía de compilación EPUB

### Otros
- **borrar/cuento.md**: texto previo/archivado (referencia interna)

## 🔧 Tecnologías Utilizadas

- **OpenAI Codex**: generación y edición de contenido
- **Pandoc**: compilación a EPUB
- **PowerShell**: automatización local

## ⚡ Proceso de Generación (macro)

1. **Guía de estilo** (`NOVELA_ESTILO.md`)
2. **Argumento** (`NOVELA_ARGUMENTO.md`)
3. **Arco global** (`NOVELA_ARCO.md`)
4. **Índice de capítulos** (`NOVELA_CAPITULOS.md`)
5. **Redacción de capítulos** (`CAP_01.md`…`CAP_20.md` + `EPILOGO.md`)
6. **Revisión de coherencia** (`REVISION_COHERENCIA.md`)
7. **Edición final** (ritmo, voz, pulido)

## 📚 Formatos Disponibles

- **Markdown**: capítulos individuales
- **EPUB**: versión eBook (`ivan_mazmorras.epub`)

> No hay versión de texto plano generada actualmente.

## 🚀 Uso

### Lectura
Los capítulos están en la raíz del proyecto, de `CAP_01.md` a `CAP_20.md`, más `EPILOGO.md`.

### Compilación
Para generar el EPUB:

```powershell
# Compilación básica
.\compile_epub.ps1

# Con parámetros personalizados
.\compile_epub.ps1 -OutputName "mi_novela" -Title "Mi Título" -Author "Mi Nombre"
```

Más detalles en `COMPILACION.md`.

## 📖 Inspiración

Inspirado en “Carl El Mazmorrero” (Matt Dinniman) a nivel de **energía narrativa**, **humor negro** y **escalada**, sin copiar trama ni estilo literal.

## 📝 Licencia

Ver archivo `LICENSE` para más detalles.

## 🤝 Contribuciones

Sugerencias y mejoras son bienvenidas.

---

**Nota**: Proyecto experimental de creación literaria asistida por modelos de lenguaje.
