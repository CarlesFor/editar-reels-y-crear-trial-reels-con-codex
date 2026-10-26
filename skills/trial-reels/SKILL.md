---
name: trial-reels
description: Crear variantes editoriales de un reel ya editado para probar enfoques diferentes como Instagram Trial Reels, con cambios de apertura, estructura, selección, b-roll, ritmo y subtítulos. Usar al solicitar versiones alternativas de un reel existente o comparar sus resultados. La edición inicial corresponde a reel-editor; esta skill no garantiza cómo Instagram detectará o distribuirá las variantes.
---

# Trial Reels

Partir de un reel terminado y producir versiones con diferencias sustanciales que un espectador pueda reconocer, conservando la veracidad y la calidad del original. El usuario busca explorar distintas versiones para Instagram Trial Reels; la comparación editorial local no permite garantizar su clasificación, alcance ni elegibilidad en Instagram.

## Revisar el material disponible

- Localizar el reel aprobado, el proyecto editable, los originales, las tomas alternativas, las pistas y los subtítulos. Inspeccionar el audiovisual, no solo los nombres de archivo o la transcripción.
- Usar el reel aprobado como referencia de contenido y acabado. Conservar el original; crear las variantes desde el proyecto y las fuentes cuando existan, para evitar pérdidas por exportaciones sucesivas.
- Identificar si solo se dispone de un MP4 con textos, música y efectos incrustados. En ese caso, trabajar dentro de lo que permita ese archivo y precisar qué cambios necesitan fuentes separadas. No asumir que se puede recuperar limpiamente una cara tapada o separar cualquier mezcla.
- Mantener el idioma, la voz, el objetivo y la identidad del usuario salvo instrucciones distintas. No inventar nuevas declaraciones ni hacer que la persona parezca decir algo que no grabó.
- Si falta la cantidad de versiones, intentar cuatro variantes adicionales al original como objetivo provisional. Ajustar el repertorio a lo que el material soporte; comunicar si no hay suficiente diversidad real para completar esa cantidad con calidad y proponer el material concreto que la haría posible.

## Diseñar las variantes

Leer [la guía de variantes y comparación](references/variantes.md). Para afirmaciones sobre el funcionamiento, publicación o resultados de Instagram, consultar [las fuentes y límites de la plataforma](references/instagram.md) y verificar lo que pueda haber cambiado.

El modo predeterminado es **exploración creativa**: distintas formas de presentar el mismo tema para descubrir enfoques que resuenen. Si el usuario pide aislar una variable, usar un modo de comparación controlada y explicar que ese objetivo puede producir versiones editorialmente próximas. No fingir que una misma prueba aísla una variable y cambia todo el montaje.

- Definir para cada versión una idea editorial, una hipótesis y la diferencia principal que verá el espectador. Elegir enfoques respaldados por el contenido: resultado primero, problema y solución, demostración, caso concreto, objeción o consejo concentrado.
- Cambiar contenido o construcción narrativa además del acabado cuando se busquen variantes sustanciales. Un titular alternativo sobre el mismo montaje no debe presentarse como una transformación profunda.
- Diseñar una apertura propia en imagen, texto y, cuando el material lo permita, audio. La promesa debe resolverse en esa misma versión.
- Revisar también el desarrollo y el final. Redistribuir pruebas, retirar bloques, usar otra toma o cambiar la relación entre persona y demostración cuando mejore el enfoque elegido. No limitar todas las diferencias al primer instante.
- Elegir duración y ritmo por la historia de cada versión. No estirar ni recortar arbitrariamente para alcanzar una diferencia numérica.
- Volver a planificar los apoyos y los subtítulos sobre cada montaje. Mantener b-roll pertinente, retornos expresivos a la persona y tratamientos animados variados con una identidad coherente.
- Adaptar el cierre a la promesa de esa variante. Usar llamada a la acción solo si encaja con el objetivo y con lo que realmente se ofrece.

## Evaluar la diferencia editorial

Comparar cada candidata con el original y con las demás variantes. Registrar los intervalos y cambios concretos en apertura, contenido, estructura, prueba visual, ritmo y presentación. Para la exploración creativa, buscar una diferencia sustancial en contenido o narración, apoyada por una ejecución audiovisual diferenciada. Este es un criterio editorial propio, no un umbral de Instagram.

- Preguntar si la diferencia se puede explicar por lo que cambia la experiencia del espectador, sin hablar de archivos o codificación.
- Si dos versiones repiten apertura, secuencia de voz y planos casi por completo, describirlas como próximas aunque tengan distinta tipografía, música o color. Replantear la candidata si eso no cumple el encargo.
- Los cambios de metadatos, nombre, códec, bitrate o hash de archivo no demuestran una diferencia de contenido. Tampoco un porcentaje de píxeles o duración equivale a una validación del detector de Instagram.
- No usar alteraciones imperceptibles, espejado global, ruido añadido o pequeños cambios de tono y velocidad como sustituto de una variante editorial. Priorizar decisiones que conserven calidad y tengan sentido para el público.
- No presentar una puntuación local de similitud como «aprobación de Instagram». No prometer versiones indetectables ni deducir del silencio de una herramienta que la plataforma las considerará nuevas.

## Montar, exportar y revisar

- Reutilizar el motor y el proyecto establecidos. Si `reel-editor` está disponible, aplicar su dirección de montaje y sus revisiones cuando sean pertinentes; esta skill sigue siendo utilizable sin esa dependencia.
- Mantener una relación reproducible entre fragmentos de origen y cada salida. Separar códigos de tiempo de origen y salida. No inventar tomas alternativas si solo existe una.
- Al modificar la secuencia, regenerar o recolocar subtítulos, titulares, música y efectos; revisar los puntos de entrada y salida de cada capa. Evitar duplicar un texto nuevo sobre subtítulos incrustados o tapar información esencial para ocultarlos.
- Revisar el margen de recorte, la nitidez y la composición antes de aplicar nuevos acercamientos. No espejar texto, interfaces o gestos para aparentar otra toma.
- Conservar la naturalidad de la voz y los matices necesarios al reordenar. Una frase causal, un pronombre o una negación pueden dejar de entenderse al cambiar de sitio.
- Usar parámetros de salida coherentes con el destino y el material. Sin otra especificación, valorar MP4 H.264/AAC vertical, 1080 × 1920 si hay resolución suficiente y cadencia adecuada al origen. Verificar especificaciones vigentes si la publicación requiere condiciones concretas.
- Renderizar cada variante realizable y reproducirla completa con imagen y audio cuando las herramientas lo permitan. Revisar legibilidad en móvil, sincronía, continuidad, color, mezcla, medios ausentes y final completo. Precisar cualquier revisión que no haya podido hacerse.
- Hacer una comparación final entre los renders, además de revisar el plan. Si una variante ha perdido claridad, personalidad o calidad, corregirla o identificarla como pendiente; no rellenar el lote con copias cosméticas.

## Entregar el lote

Guardar las salidas en una carpeta propia del proyecto, con identificadores estables como `trial-01-resultado.mp4`. No sobrescribir el reel principal ni entregas anteriores sin necesidad. Entregar:

- Los MP4 existentes y sus proyectos o archivos necesarios para repetir el montaje.
- Una tabla breve por versión con enfoque, duración real, hipótesis, diferencias respecto al original y estado de revisión. Incluir el mapa de origen y salida cuando la complejidad lo justifique.
- Una comparación por pares que indique qué distingue las versiones o cuáles siguen siendo próximas; ajustar su detalle al tamaño del lote.
- Si se solicita, propuestas de portada y texto de publicación fieles a cada versión. Esos cambios acompañan al vídeo; no reemplazan su diferenciación editorial.

Si solo se pueden elaborar planes por falta de material o herramientas, entregarlos como planes y especificar lo pendiente. No presentar archivos inexistentes como renders terminados.

## Publicación y aprendizaje

La creación del lote no autoriza publicar, programar ni modificar ajustes de la cuenta. Preparar los archivos para que puedan subirse; realizar acciones de publicación solo cuando el usuario lo solicite y haya una herramienta autorizada que las admita.

Si se pide evaluar resultados, registrar versión, fecha, tiempo transcurrido y métricas realmente disponibles. Comparar a edades semejantes y distinguir reproducciones, cuentas alcanzadas y acciones. Informar observaciones y limitaciones; una diferencia entre publicaciones no prueba por sí sola qué cambio causó el resultado. Si una versión recibe un aviso de contenido repetido, registrar el aviso real y revisar su propuesta editorial, sin iniciar rondas de pequeñas alteraciones para perseguir al detector.
