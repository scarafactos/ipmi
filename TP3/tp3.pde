//VIDEO: https://youtu.be/5OprxtNIzmQ
//Era mas largo pero tuve que recortarlo para que no se me vaya mucho del tiempo limite ;;_;; decidi saltearme las explicaciones de los últimos bloques de código q siento q ya hablan por si mismos sobre lo que hhacen. me pareció más importante hablar de la parte de color que hice y lo de cómo acomodé la image y la obra porque fue algo que me costó(?)
float cx = 600;
float cy = 200;

float anguloActual = 0;
float anguloInicio = 0;
float colorActual = 0;     
float colorInicio = 0;
float mouseXInicio = 0;

float cantidad = 12;

boolean mousePresionado = false;
PImage OG;

void setup() {
  size(800, 400);
  OG = loadImage("39.jpg");
}

void draw() {
  background(0);
  
  pushMatrix();
  translate(cx, cy);

  if (mousePresionado) {
    float diferencia = mouseX - mouseXInicio;
    anguloActual = anguloInicio + radians(diferencia);
    colorActual = colorInicio + diferencia;
  }

  rotate(anguloActual);

  color colorCirculo = calcularColor(colorActual);

  float coso = 400;
  for (int i = 0; i < cantidad; i++) {
    cosito(coso, colorCirculo);
    coso *= 0.7;
  }

  popMatrix();

  image(OG, 0, 0, 400, 400);
}


color calcularColor(float valor) {
  float r = map(sin(valor * 0.01), -1, 1, 0, 255);
  float g = map(sin(valor * 0.01 + 2), -1, 1, 0, 255);
  float b = map(sin(valor * 0.01 + 4), -1, 1, 0, 255);

  color colorArcoiris = color(r, g, b);
  float mezcla = constrain(map(abs(valor), 0, 720, 0, 1), 0, 1);

  return lerpColor(color(255), colorArcoiris, mezcla);
}

void mousePressed() {
  mousePresionado = true;
  mouseXInicio = mouseX;
  anguloInicio = anguloActual;
  colorInicio = colorActual;
}

void mouseReleased() {
  mousePresionado = false;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    anguloActual = 0;
    colorActual = 0;
    cantidad = 12;
  }
  
  if (key == 'a' || key == 'A') {
    cantidad -= 12/6;
  }
  
  if (key == 'd' || key == 'D') {
    cantidad += 12/6;
  }
}
