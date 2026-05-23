String texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10, texto11;
int contador, estado, text;
PImage Logo, IntroBG, Venom, Roboky, Bedman, BG1, BG2, BG3, Lore1, Lore2, Lore3, Lore4, Lore5, Lore6, Lore7, Panaderia, Reiniciar;
float cytexto, cximg, cyimg, opacidadtexto = 255, opacidadimagen = 255;
boolean imgok = false, textok = false;
PFont fuente1, fuente2;



void setup () {
  size (640, 480);
  contador=0;
  estado=1;
  IntroBG = loadImage("IntroBG.png");
  Logo = loadImage("Logo.png");
  BG1 = loadImage("BG1.png");
  BG2 = loadImage("BG2.png");
  BG3 = loadImage("BG3.png");
  Venom = loadImage("Venom.png");
  Roboky = loadImage("Roboky.png");
  Bedman = loadImage("Bedman.png");
  //LORE Imagenes
  Lore1 = loadImage("Lore1.png");
  Lore2 = loadImage("Lore2.png");
  Lore3 = loadImage("Lore3.png");
  Lore4 = loadImage("Lore4.png");
  Lore5 = loadImage("Lore5.png");
  Lore6 = loadImage("Lore6.png");
  Lore7 = loadImage("Lore7.png");
  Panaderia = loadImage("Panaderia.png");
  //FINAL
  Reiniciar = loadImage("Reiniciar.png");
  //TEXTOS
  texto1  = "Venom, huérfano, fue acogido por el Gremio de Asesinos y, al poco tiempo, se convirtió en miembro, aunque su delicada personalidad le impidió convertirse en un asesino exitoso. Finalmente, el Gremio determinó que era inútil y que debían eliminarlo, pero cuando Zato tomó el control del Gremio, se descubrieron las habilidades de Venom y su destino cambió drásticamente." ;
  texto2  = "Robo-Ky, un androide construido en completo secreto por un científico de una organización no revelada, fue creado originalmente como arma. Su desarrollo se basó en datos obtenidos al observar a Ky durante las Cruzadas y el torneo de reclutamiento. La habilidad de Robo-Ky en combate es impresionante, pero su personalidad deja mucho que desear. Quizás debido a algún error mágico, posee emociones extremadamente intensas para ser una máquina y es bastante egocéntrico. Si bien le profesa respeto a su amo, claramente no tiene intención de seguir órdenes." ;
  texto3 = "Muy poca gente sabe algo sobre la personalidad de Bedman, ya que duerme prácticamente todo el tiempo. Solo en el mundo de los sueños se manifiesta su verdadero ser. Bedman es sumamente inteligente y posee un vocabulario que intimida incluso a los más cultos. Es un experto en identificar las debilidades de sus oponentes y quebrar su espíritu al descubrir verdades dolorosas que intentan ocultar incluso de sí mismos. Increíblemente orgulloso, lo único que le importa es cumplir con sus ideales." ;
  //LORE texto
  texto4  = "Debido a unas confrontaciones anteriores que tuvo Venom con Bedman, Venom se dió la misión de encontrarlo y derrotarlo de una vez por todas. Para esto, Venom viaja a un pequeño pueblo y encuentra a Robo-Ky, quien demuestra haber crecido y haberse vuelto más sabio con el tiempo y los maltratos de la vida. Venom Contrata al robot para que lo ayude a derrotar a Bedman."  ;
  texto5  = "Mientras se dirigen a su destino, Robo-Ky habla de crear un huerto de mandarinas y reflexiona sobre la importancia de no faltarle el respeto a los sueños, ya que equivale a 'reírse de la propia persona'. Ellos forman una relación profunda a partir de estas conversaciones."  ;
  texto6  = "Durante el ataque de Ariel a la capital iliria, Venom y Robo-Ky se enfrentan a Bedman. Pronto se revela la razón por la que Venom contrató a Robo-Ky: Bedman no puede leer su mente. Tras un breve forcejeo, Venom usa su técnica, proclamando que debe sacrificarse. Bedman se burla a pesar de estar en desventaja, pensando que Venom es un insensato por arriesgar su vida."  ;
  texto7  = "Antes de que Venom pueda acabar con él, aparecen dos niños y Bedman centra su atención en ellos, lo que provoca la intervención de Robo-Ky. Este rechaza la visión del mundo de Bedman y se autodestruye para separarlo de su cama. Venom ejecuta el hechizo, logrando herir mortalmente a Bedman."  ;
  texto8  = "Venom se desploma por el esfuerzo, y la cabeza de Robo-Ky (separada de su cuerpo tras la autodestrucción), con su hélice, lo transporta a un lugar seguro."  ;
  texto9  = "Venom ha sobrevivido y se encuentra en un callejón ofreciendo sus servicios, intentando ganar dinero para pagar el nuevo cuerpo de Robo-Ky."  ;
  texto10  = "Mientras conversan, consiguen clientes: asesinos liderados por 2cave. Le da a elegir entre proteger el pueblo o regresar con los 'lobos', o de lo contrario matarán a un transeúnte inocente. Venom elige proteger el pueblo, así que 2cave le entrega a Venom las escrituras de una tienda en la principal zona comercial. Zato los había enviado para poner a prueba la determinación de Venom, con la esperanza de que pudiera vivir como los humanos." ;
  texto11 = "Venom y Robo-Ky terminan abriendo una panadería. Aunque Venom está inicialmente nervioso, ya que lo único que hizo para disfrazarse fue levantarse el flequillo, aún no lo han descubierto."  ;
  //FONT
  fuente1 = createFont("data/fonts/Biting My Nails.otf", 20);
}

void draw () {
  println("estado"+estado);
  background(0);
  if (estado == 1) {
    image(IntroBG, 0, 0, 640, 480);
    image(Logo, 0, 0, 640, 480);
    contador ++;

    if (contador >= 120) {
      estado++;
      contador=0;
      cytexto=0;
      cyimg=430;
    }
  } //VENOM
  if (estado == 2) {
    image(BG1, 0, 0, 640, 480);
    image(Venom, -230, cyimg, 650, 720);
    textAlign(CENTER);
    textFont(fuente1);
    fill(240);
    textSize(20);
    text(texto1, 230, cytexto, 400, 400);
    cytexto+=5;
    cyimg-=5;

    if (cyimg <= 100) {
      imgok = true;
      cyimg=100;
    }

    if (cytexto >= 220) {
      textok = true;
      cytexto=220;
    }

    if (imgok && textok == true) {
      estado++;
      textok =false;
      imgok = false;
    }
  } else if (estado==3) {
    image(BG1, 0, 0, 640, 480);
    image(Venom, -230, 100, 650, 720);
    text(texto1, 230, cytexto, 400, 400);
    contador++;

    if (contador >=240 ) {
      estado++;
      contador=0;
    }
  } else if (estado==4) {
    image(BG1, 0, 0, 640, 480);
    image(Venom, -230, 100, 650, 720);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto1, 230, cytexto, 400, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen <=0) {
      estado++;
      cytexto=480;
    } //ROBOKY
  } else if (estado==5) {
    image(BG2, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto2, 20, cytexto, 400, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
      cyimg = -700;
    }
  } else if (estado==6) {
    image(BG2, 0, 0, 640, 480);
    image(Roboky, 200, cyimg, 650, 720);
    text(texto2, 20, cytexto, 400, 400);
    cytexto-=5;
    cyimg +=5;

    if (cyimg >= 50) {
      imgok = true;
      cyimg=50;
    }

    if (cytexto <= 50) {
      textok = true;
      cytexto=50;
    }

    if (imgok && textok == true) {
      estado++;
      textok =false;
      imgok = false;
    }
  } else if (estado==7) {
    image(BG2, 0, 0, 640, 480);
    image(Roboky, 200, cyimg, 650, 720);
    text(texto2, 20, cytexto, 400, 400);
    contador++;
    if (contador >=360 ) {
      estado++;
      contador=0;
    }
  } else if (estado==8) {
    image(BG2, 0, 0, 640, 480);
    image(Roboky, 200, cyimg, 650, 720);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto2, 20, cytexto, 400, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    } //BEDMAN
  } else if (estado==9) {
    image(BG3, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
      cximg = -700;
      cytexto = 500;
    }
  } else if (estado==10) {
    image(BG3, 0, 0, 640, 480);
    image(Bedman, cximg, 20, 650, 720);
    fill(255);
    text(texto3, 220, cytexto, 400, 400);
    cytexto-=5;
    cximg+=5;

    if (cximg >= -170) {
      imgok = true;
      cximg=-170;
    }

    if (cytexto <= 50) {
      textok = true;
      cytexto=50;
    }

    if (imgok && textok == true) {
      estado++;
      textok =false;
      imgok = false;
    }
  } else if (estado==11) {
    image(BG3, 0, 0, 640, 480);
    image(Bedman, cximg, 20, 650, 720);
    text(texto3, 220, cytexto, 400, 400);
    contador++;
    if (contador >=360 ) {
      estado++;
      contador=0;
    }
  } else if (estado==12) {
    image(BG3, 0, 0, 640, 480);
    image(Bedman, cximg, 20, 650, 720);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto3, 220, cytexto, 400, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
  }
  //Lore
  //LORE 1
  else if (estado==13) {
    image(Lore1, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    textAlign(LEFT);
    textSize(16);
    text(texto4, 20, 20, 620, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
    }
  } else if (estado==14) {
    image(Lore1, 0, 0, 640, 480);
    text(texto4, 20, 20, 620, 400);
    contador++;

    if (contador >=720 ) {
      estado++;
      contador=0;
    }
  } else if (estado==15) {
    image(Lore1, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto4, 20, 20, 620, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
    //LORE 2
  } else if (estado==16) {
    image(Lore2, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto5, 20, 20, 620, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
    }
  } else if (estado==17) {
    image(Lore2, 0, 0, 640, 480);
    text(texto5, 20, 20, 620, 400);
    contador++;

    if (contador >=360 ) {
      estado++;
      contador=0;
    }
  } else if (estado==18) {
    image(Lore2, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto5, 20, 20, 620, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
    //LORE 3
  } else if (estado==19) {
    image(Lore3, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto6, 20, 20, 620, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
    }
  } else if (estado==20) {
    image(Lore3, 0, 0, 640, 480);
    text(texto6, 20, 20, 620, 400);
    contador++;

    if (contador >=720 ) {
      estado++;
      contador=0;
    }
  } else if (estado==21) {
    image(Lore3, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto6, 20, 20, 620, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
    //LORE 4
  } else if (estado==22) {
    image(Lore4, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto7, 20, 20, 620, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
    }
  } else if (estado==23) {
    image(Lore4, 0, 0, 640, 480);
    text(texto7, 20, 20, 620, 400);
    contador++;

    if (contador >=720 ) {
      estado++;
      contador=0;
    }
  } else if (estado==24) {
    image(Lore4, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto7, 20, 20, 620, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
  }    //LORE 5
  else if (estado==25) {
    image(Lore5, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto8, 20, 20, 620, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
    }
  } else if (estado==26) {
    image(Lore5, 0, 0, 640, 480);
    text(texto8, 20, 20, 620, 400);
    contador++;

    if (contador >=360 ) {
      estado++;
      contador=0;
    }
  } else if (estado==27) {
    image(Lore5, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto8, 20, 20, 620, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
  }    //LORE 6
  else if (estado==28) {
    image(Lore6, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto9, 20, 20, 620, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
    }
  } else if (estado==29) {
    image(Lore6, 0, 0, 640, 480);
    text(texto9, 20, 20, 620, 400);
    contador++;

    if (contador >=360 ) {
      estado++;
      contador=0;
    }
  } else if (estado==30) {
    image(Lore6, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto9, 20, 20, 620, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
  } //LORE 7
  else if (estado==31) {
    image(Lore7, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto10, 20, 20, 620, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
    }
  } else if (estado==32) {
    image(Lore7, 0, 0, 640, 480);
    text(texto10, 20, 20, 620, 400);
    contador++;

    if (contador >=720 ) {
      estado++;
      contador=0;
    }
  } else if (estado==33) {
    image(Lore7, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(255, opacidadtexto);
    text(texto10, 20, 20, 620, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
  }//LORE PANADERIA
  else if (estado==34) {
    image(Panaderia, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto11, 20, 20, 620, 400);
    opacidadtexto+=5;
    opacidadimagen+=5;

    if (opacidadimagen>=255) {
      estado++;
    }
  } else if (estado==35) {
    image(Panaderia, 0, 0, 640, 480);
    text(texto11, 20, 20, 620, 400);
    contador++;

    if (contador >=360 ) {
      estado++;
      contador=0;
    }
  } else if (estado==36) {
    image(Panaderia, 0, 0, 640, 480);
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    text(texto11, 20, 20, 620, 400);
    opacidadtexto-=5;
    opacidadimagen-=5;

    if (opacidadimagen<=0) {
      estado++;
    }
  } else if (estado == 37) {
    tint(255, opacidadimagen);
    fill(0, opacidadtexto);
    opacidadimagen=255;
    opacidadtexto=255;
    image(Reiniciar, 0, 0, 640, 480);
    rect(227, 170, 150, 80);
    textSize(20);
    fill(255);
    text("Reiniciar", 250, 215);
  }
}

void mousePressed() {
  if ( estado==37) {
    if ( mouseX>240 && mouseX<250+120
      && mouseY >170 && mouseY<170+70 ) {
      estado = 1;
    }
  }
}
