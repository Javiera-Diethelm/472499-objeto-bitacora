## Encargo 
- Escoger dos objetos Sacar una foto y mencionar 10 cualidades de cada uno.

Objeto 1 | Jabonera con forma de tina.
1. Está quebrada y ensamblada.
2. Tiene dibujos de flores y mariposas.
3. Aun no le quito la etiqueta.
4. La utilizo para guardar pins.
5. Tiene cuatro patas.
6. Tiene un lado más alto que el otro.
7. Es blanca por dentro.
8. Hecha de porcelana.
9. Tiene lineas doradas.
10. No mide más de 15 centímetros.

Objeto 2 | Mando de PS3
1. Es blanco.
2. Tiene 15 botones.
3. Tiene señal bluetooth.
4. Tiene conector tipo mini usb.
5. Está atornillado.
6. Tiene un circuito.
7. Tiene dos joycons.
8. Tiene forma para agarrarlo con las dos manos.
9. Tiene una etiqueta de modelo por detrás.
10. Sus botones y detalles son negros.

# Apuntes clase
- Metáfora -> Cualidades no escenciales

### Gabriela Inostroza (Neohaiku):
- Botón > Pantalla con "Presionar Botón" > Suena/Aparece texto > Grillo "Pensaba"
- Placas acrilico
- comic/dibujo fragmentado > Diagrama > Aparecia el grillo pensando > Grillo electrónico > Poetica/Asombro (Haikú)
- redescribe la naturaleza desde la contenplación
- Simulación
- Construcción de poemas

### Mateo Cereceda (Donante Universal)
- Madera atornillada
- Frasco-botella, tubo, vidrio, matraz > Pieza de cortadora láser
- Fluido, Sangre > Movimiento (bomba de agua)
- Raspberry Pi (Data scraping)
- Ensamblaje > El nuevo objeto construido de otros objetos es más que cada una de sus partes > Propiedades emergentes

## Código primer ejercicio

```processing

int tamano = 50;
// Trabajar con la temperatura ficticia de los ultimos dias
//los valores son; 10, 40, 15, 17, 30, 28, 26
int t1 = 10;
int t2 = 40;
int t3 = 15;

void setup() {
  size(300,300);
  frameRate(30);
}  

  void draw() {
  background(0);
// Hacer que el tamaño dependa del mouse en el eje Y
// El tamaño puede variar con el framecount
  if (frameCount < 30){
    tamano = t1;
  }
  if (frameCount > 30){
    tamano = t2;
  }
  if (frameCount > 60){
    tamano = t3;
  }
  
  tamano = frameCount;
  fill(255,255,0);
  circle(150,150,tamano);
//Lectura de datos en consola con Print
  println(tamano);
}
```
