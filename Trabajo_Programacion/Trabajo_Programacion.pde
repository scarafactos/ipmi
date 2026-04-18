int referencia = 30; //tipo nombre = dato
PImage fotito;

void setup() {
size(800,400);
fotito = loadImage("fotito.jpg");
}

void draw() {
background(75, 98, 54);
fill(171, 214, 244);
rect(400, 0, 500, 300);
fill(251, 251, 251); //nube
circle(410, 130, 90);
fill(86, 103, 30); // arbol
circle(400, 220, 130); //arbol
fill(202, 194, 181);
rect(400, 255, 590, 30);
fill(190, 187, 110);
rect(400, 265, 400, 53);
fill(251, 251, 251); //nubes
circle(590, 23, 90);
circle(530, 1, 50);
circle(720, 23, 160);
// cosas en el fondo
fill(124, 151, 178);
triangle(500, 300, 612, 1, 724, 300);
// casa abajo
fill(144, 154, 156);
rect(425, 270, 355, 75);
rect(435, 206, 335, 125);
// techo
fill(125, 66, 60);
rect(416, 23, 365, 185);
rect(416, 207, 35, 35);
rect(746, 207, 35, 35);
rect(537, 207, 118, 35);
fill(24, 19, 18);
rect(537, 236, 118, 5);
// ventanas, partes con marrón
fill(47, 44, 44);
rect(474, 226, 35, 45);
rect(685, 226, 35, 45);
triangle(448, 207, 488, 67 , 540 , 207);
triangle(649, 207, 692, 67 , 750 , 207);
fill(24, 19, 18);
rect(555, 243, 20, 28);
rect(610, 243, 20, 28);
fill(37, 55, 65);
rect(612, 242, 15, 24);
rect(558, 242, 15, 24);
// partes gris oscuro + ventilador
fill(72, 78, 77);
rect(527, 301, 145, 30);
rect(435, 301, 25, 30);
rect(745, 301, 25, 30);
fill(118, 141, 155);
rect(645, 298, 25, 35);
fill(32, 49, 65);
ellipse(657, 315, 15, 25);
fill(118, 141, 155);
ellipse(657, 315, 5, 15);
fill(120, 132, 122);
rect(690, 158, 10, 12);
//

// Ayuda
//
image(fotito, 0, 0, 400, 400); 
fill(255);
textSize( 24 );
text(mouseX + "/" + mouseY, mouseX, mouseY );
println( mouseX + "/" + mouseY);}
