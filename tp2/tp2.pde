//Narvaez Julieta
//Legajo: 86487/6
//Comision 3
//Trabajo Practico 2. Obra de arte electronica.

PImage obra1;
PImage obra2;
PImage obra3;

float opacidadTexto = 255;

PFont miFuente;

int estado; 
int contador; //Variable para contar fotogramas
float posX, posY; 

String texto1, texto2, texto3;

void setup() {
  size(640, 480);
  obra1 = loadImage("obra1.jpg");
  obra2 = loadImage("obra2.jpg");
  obra3 = loadImage("obra3.jpg");
  
  // Textos:
  texto1 = "Artista: Nam June Paik                     Obra: Electronic Superhighway: Continental (1995)";
  texto2 = "Esta instalación sugiere de manera muy personal como Paik se sintió y como confrontó a Estados Unidos al arribar por primera vez a su suelo.";
  texto3 = "Luces de neón que se remarcan en los monitores nos muestran el colorido mapa de USA donde también se aprecian los moteles y restaurantes. Los diferentes colores utilizados reflejan las diversas identidades y culturas.";
  
  miFuente = loadFont("Constantia-Bold-48.vlw"); // FUENTE ELEGIDA
  textFont (miFuente);
  textAlign (LEFT);
  
  estado = 1;
  contador = 0;
  posX = 10;
  posY = 320;
}

void draw() {
  background(200,0,0);
  
  
  // PANTALLA 1
  if ( estado == 1 ) { 
    image(obra1, 0, 0, width, height);
    fill(255);
    textSize(30);
    text(texto1, posX, posY, 600, 200);
    
    contador++;
    if ( contador >= 100 ) {
      estado++;
      contador = 100;
    }
  } else if ( estado == 2 ) {
    
// TRANSICION DE LA PANTALLA 1 A LA 2
    image(obra1, 0, 0, width, height);
    fill(255, opacidadTexto);
    text(texto1, posX, posY, 600, 200);
    
    opacidadTexto -= 3;
    if (opacidadTexto <= 1) {
      estado = 3;
      contador = 100;
      posX = 20;
      posY = 320;
      opacidadTexto = 255;
    }
  } else if ( estado == 3 ) {
    
// PANTALLA 2
    image(obra2, 0, 0, width, height);
    fill(255);
    textSize(28);
    text(texto2, posX, posY, 600, 200);
    
    contador++;
    if ( contador >= 280 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 4 ) {
    
    
// TRANSICION DE LA PANTALLA 2 A LA 3
    image(obra2, 0, 0, width, height);
    fill(255);
    textSize(28);
    text(texto2, posX, posY, 600, 200);
    
    posX += 5; 
    if (posX >= width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
    
    
   }  else if (estado == 5) {
     
// PANTALLA 3
    image(obra3, 0, 0, width, height); 
    fill(3,255,42);
    textSize(25);
    text(texto3, posX, posY, 600, 200);
    
    posY -= 1;
    if (posY <= -textAscent())  { 
        estado++; 
        contador = 0; 
        posX = 20; 
       
    }
} 

  else if ( estado == 6 ) {
    
//ULTIMA PANTALLA CON LA CREACION DEL BOTON DE REINICIAR.
    background(255, 0, 0);
    if ( mouseX>225 && mouseX<225+150
      && mouseY >200 && mouseY<200+80 ) {
      fill(0, 255, 0);
    } else {
      fill(200);
    }
    
    rect( 225, 200, 150, 80); 
    fill (0);
    textSize (23.5);
    text("CLICK AQUI!",225,250);

} 
    else {
    //un estado no previsto
  }
  
}
void mousePressed() {
  if ( estado==6) {
   
   //colision de mouseX,mouseY
   //con el rectangulo de 225x200 de
   //ancho 150 y alto 80
    if ( mouseX>225 && mouseX<225+150
      && mouseY >200 && mouseY<200+80 ) {
      estado = 1;
      posY = 320; 
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
 
}
