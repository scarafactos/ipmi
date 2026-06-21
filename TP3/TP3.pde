float cx = 600;
float cy = 200;
float giro = 0;
float girototal = 0;
boolean mousePresionado = false;
PImage OG;

void setup() {
  size(800, 400);
  OG = loadImage("39.jpg");
}

void draw() {
  pushMatrix();
  translate(600, 200);
  if (mousePresionado) {
    rotate(radians(giro));
    giro = mouseX;
  }
  float coso = 400;

  for (int i = 0; i < 12; i++) {
    cosito(coso);
    coso *= 0.7;
  }
  fill(200, 255);
  popMatrix();
  image(OG, 0, 0, 400, 400); 
}

void mousePressed() {
  mousePresionado = true;
}

void mouseReleased() {
  mousePresionado = false;
}
