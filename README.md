# El Juego de Pepita

## Fase 1

> Objetivo del nivel: familiarizarse con el framework

### Contexto
Pepita es una golondrina que puede moverse libremente por el juego. Su objetivo es llegar al nido, es por eso que se muestra más grande al llegar a él. Para lograrlo debe evitar a Silvestre, un gato que está atento a sus pasos desde el piso.

### Requerimientos
- Hacer que Silvestre persiga a Pepita. Silvestre siempre se mueve a la altura del piso, pero va persiguiendo a Pepita hacia los lados, según donde ella se mueva.
- Hacer que Pepita se vea gris al ser atrapada por Silvestre. Esto es, que se muestre con la imagen `pepita-gris` al estar en la misma posición que Silvestre.
- **BONUS**: Silvestre no puede estar a la izquierda del eje x = 3, siendo éste el mínimo valor de x permitido para la posición de Silvestre.



## Fase 2

> Objetivo del nivel: acciones con las teclas

### Contexto
Ahora necesitamos que pepita gaste energía cada vez que se mueve, es por eso que en este nivel necesitamos tener mayor control sobre qué hacer cuando se presionen determinadas teclas. Ya están configuradas las teclas de movimiento izquierda y derecha para que Pepita se mueva y pierda la energía correspondiente por volar dicha distancia.

Como Pepita pierde energía al moverse, vamos a necesitar que pueda comer las comidas para evitar que se quede sin energía...


### Requerimientos
- Pepita comienza con energía = 100.
- Configurar las teclas arriba, abajo, izquierda y derecha para que mueva a Pepita a las respectivas posiciones. Pepita debe volar hacia la nueva distancia, y gastará 9 joules de energía por cada kilómetro volado (considerar la distancia entre la posición nueva y la anterior).
- Hacer que Pepita se vea gris al quedarse sin energía. Además, no debería poder moverse una vez que se quedó sin energía.
- Configurar la C para que Pepita coma la comida sobre la que está parada. Al comer una comida, pepita aumenta su energía correspondiente a la otorgada por la comida y ésta última desaparece del juego.
> Para obtener el objeto con el que pepita se encuentra colisionando usar el mensaje `game.uniqueCollider(pepita)`.
- **BONUS**: 
  - Antes de mover a pepita, controlar que no se vaya del rango visible del juego.
  - Luego de moverse, si se queda sin energía, terminar el juego.
  - Utilizar el evento `onTick` para agregar gravedad, haciendo que pepita pierda altura cada `800` milisegundos, es decir, descienda su coordenada `y` en 1, pero _sin perder energía_.



## Fase 3

> Objetivo del nivel: acciones con colisiones

### Contexto
¡Nuestros niveles van tomando onda! Ahora queremos agregar acciones que se ejecuten cuando Pepita colisione con otro objeto. Decimos que se produce una colisión entre dos objetos cuando ambos se encuentran en la misma posicin.

Ahora Pepita gana al colisionar con el nido y termina el juego. Pero... ¿qué pasa al colisionar con otra cosa?

### Requerimientos
- Cuando Pepita colisiona con Silvestre pierde, por ende debería terminar el juego.
- Cuando Pepita colisiona con una comida no debería pasar nada (ni siquiera fallar con un error).
- **BONUS**: Al ganar o perder, que Pepita diga `¡GANE!` o `¡PERDÍ!`, respectivamente, y esperar 2 segundos para terminar el juego.



## Fase 4

> Objetivo del nivel: Usar Clases y analizar el momento de la instanciación.

> Objetivos secundarios:  Generación de números aleatorios. Se usan colecciones. Se puede usar un abstract factory.


### Contexto

Pepita va a poder alimentarse en el camino para poder llegar al nido.
Los alimentos aparecen de manera aleatoria en el juego. 


### Requerimientos

#### Colisión con comidas preestablecidas
1. Hacer que pepita coma una comida cuando colisiona contra ella. Una vez comida la comida, debe desaparecer del juego. 
2. Hacer que pueda haber diferentes manzanas. Cada manzana tiene su propia posición. 
3. Pepita puede comer diferentes montoncitos de alpiste. Cada montoncito podrá tener peso diferente. La energia que aporta es de una caloría por cada gramo de peso.
   
### Aparición aleatoria de comidas
 
1. Al inicio del juego no hay comidas. Cada 3 segundos aparece en una posición vacía al azar una manzana. 
2. Sólo puede haber 3 alimentos a la vez en el tablero. Por lo tanto al pasar los 3 segundos, si ya hay 3 alimentos no aparece nada.
3. Incorporar la posibilidad de que aparezca un montoncito de alpiste en lugar de una manzana. Hay un 50% de probabilidad para cada uno.
   El montoncito de alpiste tiene un peso al azar de entre 40 y 100 gramos.

### Bonus
1. Programar un mapa de manera sensata donde figuren los muros, el nido, y la posicion inicial de pepita 