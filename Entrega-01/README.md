## Primera entrega

- Objeto de estudio: Frecuencia de la farmacia, número de atención.
- Este objeto resuena conmigo porque todos los meses debo ir a comprar pastillas para mi trastorno y diagnóstico psiquiátrico, por lo que es algo que rutinariamente debo cumplir por mantenerme estable. Es medible la frecuencia en la que suenan los números y avanza la fila, ya que es una farmacia particular llamada “Farmacias liga chilena contra la epilepsia”, enfocada en poder llegar a más personas y ser más asequible en torno a los medicamentos y sus precios.
- Mi base de datos fue tomada de forma analógica, por lo que las horas serán convertidas a números enteros
- Tiempo del sonido de cambio de número de atención:

| Hora  | Valor |
|-------|-------|
| 15:08 | 308   |
| 15:10 | 310   |
| 15:10 | 310   |
| 15:13 | 313   |
| 15:14 | 314   |
| 15:16 | 316   |
| 15:16 | 316   |
| 15:17 | 317   |

(Esto está en un archivo .csv)
Mi sketch en processing va a ser un contador del total de números de datos que recaudé, con fondo negro y avanzando con cada click al número final. Los datos son el tamaño del número del contador.
Cada click va con un sonido integrado de pastillas en un frasco.

(Link del chat con ChatGPT para el desarrollo del sketch: https://chatgpt.com/share/69e11776-2c84-83e9-8955-4d8f139353ff)

```processing
import processing.sound.*;

int[] datos = {308, 310, 310, 313, 314, 316, 316, 317};
int indice = 0;

SoundFile sonido;

void setup(){
  size(650,650);
  textAlign(CENTER, CENTER);
  sonido = new SoundFile(this, "pastillas.wav");
}

void draw(){
  background(0);
  
  int numero = indice + 1;
  int tamano = datos[indice] / 2;
  
  fill(255);
  textSize(tamano);
  text(numero, width/2, height/2);
}

void mousePressed() {
  sonido.stop();
  sonido.play();
  if (indice < datos.length - 1) {
    indice++;
  } else {
    delay(300);
    exit();
  }
}
```
