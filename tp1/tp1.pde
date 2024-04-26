PImage miFoto;

void setup() {
  size(800,400); // Define el tamaño del sketch
   miFoto = loadImage("diego.jpg");
} 

void draw() {
 background(71,206,110);
  image(miFoto,0,0,400,400); // Muestra la imagen

  // Forma de la cara
beginShape();

  fill(242, 196, 191);
  strokeWeight(4);
  vertex(487,144);
  vertex(487,207);
  vertex(542,255);
  vertex(643,257);
  vertex(682,208);
  vertex(683,147);
  
endShape();
  

  // Cabello 
  fill(3,0,0);
  ellipse(482, 148, 50, 50);
  ellipse(532,77,50,50);
  ellipse(583,70,60,60);
  ellipse(649,77,75,90);
  ellipse(691,128,100,70);
  ellipse(707,158,70,70);
  ellipse(705,205,60,50);
  ellipse(479,195,50,50);
  ellipse(618,131,70,60);
  ellipse(536,130,70,70);
  ellipse(540,128,50,50);
  ellipse(545,129,50,40);
  ellipse(584,95,60,60);
  ellipse(578,97,80,80);
  ellipse(582,99,100,80);
  ellipse(702,82,40,60);
  ellipse(498,99,85,80);
  ellipse(572,125,85,60);
  ellipse(472,156,60,60);
  ellipse(476,112,60,60);
  
  
  // Partes del rostro
  ellipse(551,189,8,8);//ojos
  ellipse(617,189,8,8);
  
  strokeWeight(9);//cejas
  line(534,174,566,171);
  line(603,169,638,173);
  
  strokeWeight(2.5);//boca
  line(574,226,602,226);
  
  ellipse(581,208,0.2,0.2);//nariz
  ellipse(589,208,0.2,0.2);
  

  //Cuello
beginShape();

  fill(242, 196, 191);
  vertex(565,258);
  vertex(565,281);
  vertex(565,280);
  vertex(587,299);
  vertex(612,278);
  vertex(610,258);
  
endShape();
  

 //Camiseta
beginShape();
 
 fill(29, 79, 178);
 vertex(565, 280);
 vertex(483, 314);
 vertex(458,399);
 vertex(482, 399);
 vertex(456, 399);
 vertex(689, 399);
 vertex(731,397);
 vertex(731,397);
 vertex(692, 315);
 vertex(731, 399);
 vertex(690, 308); 
 vertex(612, 278); 
 vertex(565, 280); 
 vertex(483, 314); 
 vertex(483,319);
 vertex(486,399); 

endShape();

line(690,311,693,397);//manga de la camiseta

}
