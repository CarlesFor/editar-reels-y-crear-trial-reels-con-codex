# Editar reels y crear Trial Reels con Codex

Dos skills en español para trabajar con Codex: editar un reel a cámara con ritmo y personalidad, y preparar versiones alternativas de un reel terminado para probar distintos enfoques en Instagram.

| Skill | Para qué sirve | Cómo invocarla |
| --- | --- | --- |
| **Editor de reels** | Montaje dinámico, b-roll pertinente, zooms con intención, retornos a cámara y subtítulos animados. | `$reel-editor` |
| **Creador de Trial Reels** | Variantes con distintas aperturas, estructuras, pruebas visuales y tratamientos de montaje. | `$trial-reels` |

## Empieza aquí

1. Descarga este repositorio con **Code → Download ZIP** y descomprímelo, o clónalo con Git.
2. Instala las skills con el método de tu sistema que se explica abajo.
3. Abre con Codex la carpeta donde tengas tus vídeos.
4. Escribe `$reel-editor` o `$trial-reels`, indica el archivo y describe el resultado que buscas.

## Qué necesitas

- Codex con soporte de skills; por ejemplo, Codex CLI o la extensión para el IDE.
- Acceso a los vídeos y permiso de escritura en la carpeta donde guardar las entregas.
- Herramientas para inspeccionar y renderizar vídeo disponibles para Codex. El motor concreto depende de tu entorno: estas skills reutilizan el editor, proyecto o herramientas que ya tengas establecidos.

Las skills contienen instrucciones y referencias. No incluyen un editor de vídeo, cuentas de servicios, música, bancos de imágenes ni un motor de render. Codex debe comprobar qué puede ejecutar y comunicar cualquier limitación; un plan de montaje no equivale a un vídeo exportado.

## Instalación en Windows

Dentro de la carpeta descargada, abre PowerShell y ejecuta:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\instalar.ps1
```

La opción de ejecución se aplica a ese proceso; no cambia la configuración permanente de PowerShell. El script copia ambas skills a la carpeta personal `.agents\skills`, para que estén disponibles en tus proyectos. Puedes leer [el instalador](instalar.ps1) antes de ejecutarlo.

Si usas Git, el recorrido completo es:

```powershell
git clone https://github.com/CarlesFor/editar-reels-y-crear-trial-reels-con-codex.git
cd editar-reels-y-crear-trial-reels-con-codex
powershell -NoProfile -ExecutionPolicy Bypass -File .\instalar.ps1
```

Para instalar solo una:

```powershell
.\instalar.ps1 -Skills reel-editor
```

El instalador guarda una copia de las instalaciones existentes antes de actualizar sus archivos. Al terminar muestra la ubicación de instalación y, si corresponde, la de las copias anteriores. No instala herramientas de edición ni publica vídeos.

## Instalación en macOS o Linux

En la carpeta descargada, ejecuta:

```bash
mkdir -p "$HOME/.agents/skills"
cp -R skills/reel-editor skills/trial-reels "$HOME/.agents/skills/"
```

Estos comandos copian ambas carpetas; si ya tienes versiones personalizadas, guarda una copia antes de reemplazarlas.

También puedes pedir a Codex que instale las skills:

```text
Usa $skill-installer para instalar las skills de este repositorio:
https://github.com/CarlesFor/editar-reels-y-crear-trial-reels-con-codex

Rutas: skills/reel-editor y skills/trial-reels.
```

Ese método necesita que la skill de instalación esté disponible y que la sesión tenga acceso al repositorio y a la carpeta de destino.

## Comprueba que aparecen

En Codex CLI o la extensión del IDE, abre `/skills` o escribe `$` para buscarlas. Deberías encontrar **Editor de reels** y **Creador de Trial Reels**.

Codex detecta cambios en las skills; si no aparecen, reinícialo. La ubicación personal es `~/.agents/skills`; guardar el repositorio en una carpeta llamada `skills` no basta para instalarlo. Para una instalación limitada a un proyecto, coloca las carpetas de ambas skills dentro de su `.agents/skills`.

Consulta la [documentación oficial de skills](https://learn.chatgpt.com/docs/build-skills) para las ubicaciones de descubrimiento y el comportamiento del cliente que utilices.

## 1. Editar el reel principal

Un punto de partida útil para organizar el material:

```text
mi-reel/
├── originales/       Vídeo a cámara y tomas alternativas
├── apoyos/           Capturas, demostraciones y b-roll
├── audio/            Música o pistas separadas, si las tienes
└── guion.txt         Guion o notas, si existen
```

Puedes empezar con un único vídeo a cámara. Los apoyos y el guion son opcionales; cuantos más recursos pertinentes aportes, más decisiones de montaje se podrán realizar sin pedir material adicional.

Copia este ejemplo en Codex y ajusta las rutas:

```text
$reel-editor

Edita originales/toma-principal.mp4 como un reel vertical a cámara.
Quiero un montaje dinámico y con personalidad, b-roll relacionado
con lo que cuento, retornos a mi cara y subtítulos animados con variedad.
Usa los recursos de apoyos/ cuando aporten información.
El objetivo es explicar la idea con claridad y despertar interés.
Entrega el MP4 y los archivos necesarios para repetir la edición.
```

La skill trabaja selección y estructura, decide dónde cortar, acercar o abrir el encuadre, coordina voz y b-roll, diseña los textos y revisa el resultado que haya podido renderizar. Conserva los originales.

La dirección actual exige continuidad en la entrada y salida de toda la escena, apoyos con animaciones propias y un inicio que concentre la promesa mediante imagen y sonido. Suavizar solo los subtítulos no corrige un b-roll que aparece completo de golpe. El repertorio incluye logos reales de marcas mencionadas, tipografía con jerarquía y efectos sincronizados, adaptados al contenido.

Consulta [dirección y acabado](skills/reel-editor/references/direccion-y-acabado.md), [control editorial](skills/reel-editor/references/control-editorial.md) y [notas de referencias](skills/reel-editor/references/referencias-aprobadas.md). Los vídeos originales de referencia, la música y los proyectos personales no se distribuyen en este repositorio.

Si quieres ajustar el estilo, concreta la intención:

```text
Mantén el montaje expresivo, pero reduce los zooms rápidos.
Usa titulares animados en preguntas y remates, y deja la explicación
con subtítulos más estables para poder ver las demostraciones.
```

## 2. Crear variantes para Trial Reels

Cuando tengas el reel principal, conserva también el proyecto editable, los originales y las pistas separadas. Permiten rehacer el montaje con más libertad que un MP4 con música y subtítulos incrustados.

```text
$trial-reels

Parte del reel terminado entregas/reel-principal.mp4 y del proyecto
editable de esta carpeta. Crea cuatro variantes adicionales para
explorar enfoques diferentes como Trial Reels.

Si el material lo permite, prueba resultado primero, problema y solución,
demostración y consejo concentrado. Cambia las aperturas y la construcción
del montaje cuando aporte algo. Conserva la veracidad y mi estilo.
Entrega cada MP4 y una tabla de diferencias y revisiones.
```

La cantidad y los enfoques se adaptan al material. La skill compara las candidatas con el original y entre sí para identificar diferencias reconocibles de contenido, narración y ejecución. Cambiar únicamente el color de los textos, la música o el nombre del archivo no equivale a una variante editorial profunda.

Si solo tienes el vídeo final, indícalo:

```text
$trial-reels Tengo únicamente este MP4 con subtítulos incrustados.
Revisa qué variantes se pueden hacer con calidad y señala qué cambios
necesitarían el proyecto original o una grabación adicional.
```

### Qué se puede concluir sobre Instagram

Los Trial Reels permiten probar contenido inicialmente con personas que no te siguen y decidir después si compartirlo con todos, según la [explicación de Meta](https://about.fb.com/news/2024/12/trial-reels-try-content-non-followers-first-see-what-perfoms-best/).

**La skill no garantiza que Instagram considere cada versión contenido nuevo ni que le dé alcance.** Meta describe reconocimiento de coincidencias audiovisuales en su [anuncio sobre contenido original y recomendaciones](https://about.fb.com/ltam/news/2024/05/ayudando-a-los-creadores-a-encontrar-nuevas-audiencias/). Ese anuncio no certifica el tratamiento de todas las variantes del propio creador.

La skill prepara los archivos; subirlos o programarlos requiere una petición de publicación y herramientas compatibles. Si comparas resultados, indica las métricas y el tiempo transcurrido desde cada publicación. Variar varios elementos permite explorar propuestas, pero no aislar cuál causó una diferencia de rendimiento.

## Qué recibirás

Cuando los medios y las herramientas lo permitan:

- El reel editado o los MP4 de las variantes solicitadas.
- El proyecto editable o los archivos necesarios para repetir el montaje.
- Un resumen de decisiones y revisiones, y una tabla comparativa para las variantes.
- Una indicación clara de los recursos o verificaciones que queden pendientes.

## Actualizar las skills

Si clonaste el repositorio:

```powershell
git pull
powershell -NoProfile -ExecutionPolicy Bypass -File .\instalar.ps1
```

Si descargaste el ZIP, descarga la nueva versión y vuelve a ejecutar el instalador desde esa carpeta. Reinicia Codex si los cambios no se reflejan. El instalador actualiza los archivos del paquete y conserva otros archivos que hayas añadido a la carpeta de la skill.

## Estructura y referencias

```text
skills/
├── reel-editor/
│   ├── SKILL.md
│   ├── agents/openai.yaml
│   └── references/montaje-dinamico.md
└── trial-reels/
    ├── SKILL.md
    ├── agents/openai.yaml
    └── references/
        ├── variantes.md
        └── instagram.md
```

- [Instrucciones de Editor de reels](skills/reel-editor/SKILL.md).
- [Guía de montaje dinámico y fuentes](skills/reel-editor/references/montaje-dinamico.md).
- [Instrucciones de Creador de Trial Reels](skills/trial-reels/SKILL.md).
- [Criterios de variantes y comparación](skills/trial-reels/references/variantes.md).
- [Fuentes y límites de las afirmaciones sobre Instagram](skills/trial-reels/references/instagram.md).

Para proponer una mejora, describe el tipo de material, el comportamiento observado y el resultado que esperabas. Comparte únicamente los fragmentos que quieras hacer públicos.
