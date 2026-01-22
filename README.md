# Iván - Generador de Novelas Estilo "Carl El Mazmorrero"

Una novela generada automáticamente utilizando modelos de lenguaje avanzados, inspirada en el estilo de "Carl El Mazmorrero" de Matt Dinniman.

## 📖 Descripción

Este proyecto nació de la pasión por la novela "Carl El Mazmorrero" de Matt Dinniman. Con el objetivo de crear una experiencia de lectura completamente nueva y sorprendente, se desarrolló un sistema que utiliza inteligencia artificial para generar una novela original en el mismo estilo, pero con total libertad creativa.

El sistema permite que el modelo de lenguaje construya una narrativa fresca sin influencias predeterminadas, manteniendo la esencia del estilo original mientras explora nuevos territorios creativos.

## 🎯 Objetivo

Crear una experiencia de lectura sorprendente y única, donde el lector pueda disfrutar de una historia en el estilo que ama sin conocer previamente los eventos que van a suceder.

## 📁 Estructura del Proyecto

### Novela Generada
- **capitulos/CAP_01.md** a **capitulos/CAP_20.md**: Capítulos individuales de la novela
- **cuento.md**: Versión condensada o resumen (en borrar/)
- **ivan_mazmorras.epub**: Versión compilada en formato eBook

### Documentación de Diseño
- **NOVELA_PLAN.md**: Plan general de la novela
- **NOVELA_ARGUMENTO.md**: Desarrollo del argumento principal
- **NOVELA_ARCO.md**: Estructura del arco narrativo
- **NOVELA_CAPITULOS.md**: Planificación de capítulos
- **NOVELA_ESTILO.md**: Definición del estilo narrativo


## 🔧 Tecnologías Utilizadas

- **OpenAI Codex**: Motor principal de generación de contenido
- **Pandoc**: Herramienta de compilación para formato EPUB
- **Modelos de Lenguaje Avanzados**: Generación con máximo razonamiento

## ⚡ Proceso de Generación

1. **Análisis del Estilo**: Estudio profundo del estilo narrativo original
2. **Planificación**: Desarrollo del argumento, arco y estructura
3. **Generación**: Creación automática de capítulos con total libertad creativa
4. **Compilación**: Conversión a formato EPUB para distribución

### Tiempo de Construcción
- **Estimado**: Aproximadamente 30 minutos
- **Proceso**: Completamente automatizado

## 📚 Formatos Disponibles

- **Markdown**: Capítulos individuales para lectura y edición
- **EPUB**: Formato eBook para lectores digitales
- **Texto plano**: Versión de referencia

## 🚀 Uso

### Creación del libro

Para generar una nueva novela, abre Codex e introduce el siguiente prompt:

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
Los capítulos están organizados secuencialmente en la carpeta `capitulos/` desde CAP_01.md hasta CAP_20.md. También está disponible la versión compilada en formato EPUB.

### Compilación
Para generar el archivo EPUB desde los archivos Markdown:

```bash
# Instrucciones de compilación pendientes de documentar
# Se utiliza Pandoc para el proceso
```

## 📖 Inspiración

Este proyecto está inspirado en "Carl El Mazmorrero" de Matt Dinniman, una obra que combina elementos de fantasía, humor y aventura de manera magistral.

## 📝 Licencia

Ver archivo [LICENSE](LICENSE) para más detalles.

## 🤝 Contribuciones

Este proyecto está en constante evolución. Las sugerencias y mejoras son bienvenidas.

---

**Nota**: Este es un proyecto experimental que explora las capacidades de los modelos de lenguaje para la creación literaria automatizada.






