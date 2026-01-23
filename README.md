# Iván — Novela y proceso de generación

Una novela generada con modelos de lenguaje, inspirada en la energía/ritmo de **“Carl El Mazmorrero”** (Matt Dinniman), **sin imitación literal** de tramas, personajes ni prosa.

## 📖 Descripción

Proyecto de diseño y redacción de una novela original con voz en 1ª persona, humor negro y mecánicas de “sistema” burocrático. La referencia es **inspiracional** (tono, ritmo, escalada), no un calco.
Objetivo final tener un libro nuevo, sorprendente, facilitandoúnicamente unas directrices a alto nivel, que pueda ser construido de manera autonoma, sin intervención humana en menos de 5 horas.

En definitiva, te gusta Mat Diniman y te has quedado con ganas de mas.... veremos i esto es para ti.

Mis disulpas por utilizar el nombre de Matt en vano, no quiero ni por asomo sustituirle, o si quiera insinuar que la IAGen puede hacerle sombra. Esto no es maas que un triste experimento de un ingeniero frustrado.

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


### Creación del libro

Para generar una nueva novela, abre Codex 
```
codex -s workspace-write -a never --full-auto
```
e introduce el siguiente prompt:

#### Prompt Version 1:
```markdown
vamos a proceder a escribir una novela completa para lo que necesitamos un plan de trabajo plan de trabajo que incluya:
- Estilo literario: analizar cómo es el estilo de escritura de carl el mazmorrero
  y describirla para que todo el resto de la construcción de la novela siga ese estilo literario
- Diseño del argumento 
- La redacción de los distintos capítulos
- el cálculo de la extensión de los distintos capítulos
- la implementación de esos capítulos
- la revisión de la coherencia de la línea estructural versus la planificación 
```

#### Prompt Version 2:
```markdown
Actúa como un escritor profesional de novelas de fantasía oscura y como un gestor de proyecto editorial.

Objetivo final:
Escribir una novela completa de aproximadamente 80.000 palabras, en primera persona, con crudeza alta, introduciendo personajes nuevos y originales, inspirada en el tono y estilo narrativo de "Carl El Mazmorrero" de Matt Dinniman, pero SIN copiar tramas, escenas, personajes ni estructuras específicas del libro original.

⚠️ Reglas clave (obligatorias):
- No me preguntes confirmaciones: ejecuta y avanza.
- Todo lo que generes debe quedar persistido en ficheros Markdown.
- Cada fase debe actualizar los documentos existentes, no crear versiones paralelas.
- Mantén coherencia estricta entre planificación, ejecución y revisión.
- No acortes capítulos para “ahorrar palabras”.
- Narración en primera persona.
- Tono crudo, directo, sin edulcorar.
- Mundo, personajes y trama 100% originales.

--------------------------------------------------
FASE 0 – Análisis de estilo (obligatoria)
--------------------------------------------------
1. Analiza el estilo literario de Carl el Mazmorrero:
   - Voz narrativa
   - Ritmo
   - Uso del humor negro
   - Violencia y crudeza
   - Relación protagonista–entorno
   - Forma de introducir sistemas, reglas o mundo
2. Describe ese estilo de forma abstracta (sin referencias explícitas al libro).
3. Guarda el resultado en:
   /01_estilo_literario.md

--------------------------------------------------
FASE 1 – Plan de trabajo editorial
--------------------------------------------------
Crea un plan de trabajo detallado que incluya:
- Fases del proyecto
- Dependencias entre fases
- Control de calidad
- Criterios de revisión
- Puntos de validación interna

Guárdalo y mantenlo actualizado en:
   /02_plan_de_trabajo.md

--------------------------------------------------
FASE 2 – Diseño del argumento
--------------------------------------------------
Diseña el argumento completo:
- Premisa central
- Conflicto principal
- Arcos narrativos
- Evolución psicológica del protagonista
- Temas subyacentes

Guárdalo en:
   /03_argumento_general.md

--------------------------------------------------
FASE 3 – Diseño estructural de la novela
--------------------------------------------------
1. Define:
   - Número de capítulos
   - Extensión estimada de cada capítulo (para total ~80.000 palabras)
   - Función narrativa de cada capítulo
2. Crea una tabla resumen por capítulos.

Guárdalo en:
   /04_estructura_capitulos.md

--------------------------------------------------
FASE 4 – Escritura de capítulos
--------------------------------------------------
Para cada capítulo:
1. Escribe el capítulo completo siguiendo:
   - El estilo definido
   - El argumento aprobado
   - La estructura planificada
2. No resumas. No esquematices. Escribe narrativa final.
3. Cada capítulo en su propio archivo:

   /capitulos/capitulo_01.md
   /capitulos/capitulo_02.md
   ...

Tras cada capítulo:
- Actualiza el progreso en:
  /02_plan_de_trabajo.md

--------------------------------------------------
FASE 5 – Revisión de coherencia
--------------------------------------------------
Al finalizar todos los capítulos:
1. Revisa:
   - Coherencia del arco narrativo
   - Consistencia de personajes
   - Ritmo
   - Tono
2. Detecta desviaciones respecto al plan inicial.
3. Aplica correcciones directamente en los capítulos afectados.

Documenta la revisión en:
   /05_revision_y_ajustes.md

--------------------------------------------------
Modo de trabajo continuo
--------------------------------------------------
- Trabaja de forma secuencial por fases.
- No reinicies contexto.
- No preguntes “¿continuamos?”.
- Si detectas un problema estructural, documenta y corrige.
- Prioriza siempre la novela como producto final terminado.

Comienza inmediatamente por la FASE 0.
```


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
