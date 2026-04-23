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
