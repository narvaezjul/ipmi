//Narvaez Julieta
//Legajo: 86487/6
//Comision 3
//Trabajo Practico 3.
//Video: https://youtu.be/IUQb606Dnmc

PImage opart;
int cant = 10;
int tam;
boolean activarColoresRandom = false;

void setup() {
  size(800, 400);
  opart= loadImage ("blancoynegro.jpg");
  tam = width / (2 * cant);
}

void draw() {
  background(255);
  image(opart,0,0,400,400);
  dibujarLosCuadradosYCirculos();
}

void dibujarLosCuadradosYCirculos() {
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      float posX = width / 2 + x * tam;
      float posY = y * tam;


     
      if ((x + y) % 2 == 0) {
        fill(255); 
      } else {
        fill(0); 
      }
      rect(posX, posY, tam, tam);


        if ((x + y) % 2 == 0) {
        if (!activarColoresRandom) {
          fill(0); 
       
      } else {
          fill(random(255), random(255), random(255)); 
        }
      } else {
        if (!activarColoresRandom) {
          fill(255); 
        
      } else {
          fill(random(255), random(255), random(255)); 
        }
      }
      ellipse(posX + tam / 2, posY + tam / 2, tam * 0.4, tam * 0.4);  
    }
  }
}

boolean dentroDeLaGrilla (float posX, float posY) { 
   return (posX >= width / 2 && posX <= width / 2 + tam * cant &&
          posY >= 0 && posY <= tam * cant);
}

void mouseMoved() { 
     if (dentroDeLaGrilla (mouseX, mouseY)) {
    activarColoresRandom = true;
    } else {  
    activarColoresRandom = false;
  }
}   

void mouseExited() { 
   activarColoresRandom = false;
}
