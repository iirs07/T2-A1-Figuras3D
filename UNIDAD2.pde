PShape star;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  
  txtr = loadImage("es.jpg");   
  star = loadShape("star.obj");
  star.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (11,16,67);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (80);
  shape (star);
  popMatrix();

  theta+=.02; //increment angle
  
}
