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
