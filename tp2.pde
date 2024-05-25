//Lautaro Oviedo Legajo: 92708/7 Documento: 46191279

int pantalla, contador, movx, posx, velx, posX, posY, movText, velText, x;
PImage imagen1, imagen2, imagen3, finjpg;
String introduccion, texto1, texto2, texto3, fin;
PFont fuente;
void setup() {
  size(640, 480);

  posX=160;
  posY=150;
  //movimieto y tiempo
  pantalla = 0;
  contador = 0;
  movx=0;
  velx=1;
  movText=0;
  velText=1;
  x=210;
  //imagenes
  imagen1 = loadImage("imagen1.png");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  finjpg = loadImage("fin.jpg");

  //textos y fuente
  introduccion = "Arte Digital";
  texto1 = "Creado por:Ex, Arte electronico experimental Expuesto en: IKONO Madrid";
  texto2 = "Creado por:Nixso \n Expuesto en: Medialab Prado ";
  texto3 = "Creado por: Madrid Artes Digitales  Expuesto en: Madrid Artes Digitales";
  fin= "RESET";
  fuente= createFont("fuenteart.ttf", 30);
}

void draw() {


  println(contador);
  textFont(fuente);


  if (pantalla==0) {

    background(0);
    textSize(50);
    fill(255, 0, 0);
    rect(posX, posY, 320, 200);
    contador=0;
    text(introduccion, x, 100);
    fill(255);
    triangle(280, 180, 280, 320, 380, 250);
  }


  if (pantalla==1) {
    contador++;
    movx= movx+velx;
    movText=movText + velText;
    image(imagen1, -20+movx/4, 0, width+100, height);
    textAlign(CENTER, CENTER);
    text(texto1, movText*2-600, 300, 600, 200);
    rect(600, 200, 40, 30);
    pushStyle();
    textSize(20);
    fill(0);
    textAlign(CENTER, CENTER);
    text("next", 620, 215);
    popStyle();
    if (movx+620>=width) {
      velx=-1;
    }
    if (movx<=-170) {
      velx=1;
    }
    if (contador>=600) {
      pantalla=2;
      contador=0;
      movText=-1;
    }
  }






  if (pantalla==2) {
    contador++;
    movx= movx+velx;
    movText=movText + velText;
    image(imagen2, -20+movx/4, 0, width+100, height);
    textAlign(CENTER, CENTER);
    text(texto2, 700-movText*2, 300, 400, 200);
    rect(600, 200, 40, 30);
    pushStyle();
    textSize(20);
    fill(0);
    textAlign(CENTER, CENTER);
    text("next", 620, 215);
    popStyle();
    if (movx+620>=width) {
      velx=-1;
    }
    if (movx<=-170) {
      velx=1;
    }
    if (contador>=600) {
      pantalla=3;
      contador=0;
      movText=-1;
    }
  }



  if (pantalla==3) {
    contador++;
    movx= movx+velx;
    movText=movText + velText;
    image(imagen3, -20+movx/4, 0, width+100, height);
    textAlign(CENTER, CENTER);
    text(texto3, movText*2-400, 300, 400, 200);
    rect(600, 200, 40, 30);
    pushStyle();
    textSize(20);
    fill(0);
    textAlign(CENTER, CENTER);
    text("next", 620, 215);
    popStyle();
    if (movx+620>=width) {
      velx=-1;
    }
    if (movx<=-170) {
      velx=1;
    }
    if (contador>=600) {
      pantalla=4;
      contador=0;
      movText=-1;
    }
  }


  if (pantalla==4) {
    background(0);
    image(finjpg, 0, 0, width, height);
  textSize(70);
  textAlign(CENTER,CENTER);
    text(fin, 330, 400);
   
  }
}

void mousePressed() {

  if (pantalla==0) {
    if (mouseX>posX && mouseX<posX+320 && mouseY>posY && mouseY<posY+200 ) {
      pantalla=1;
    }
  } else if ( pantalla==1) {
    if (mouseX<640 && mouseX>600 && mouseY<230 && mouseY>200) {
      pantalla=2;
    }
  } else if ( pantalla==2) {
    if (mouseX<640 && mouseX>200 && mouseY<230 && mouseY>200) {
      pantalla=3;
    }
  } else if ( pantalla==3) {
    if (mouseX<640 && mouseX>200 && mouseY<230 && mouseY>200) {
      pantalla=4;
    }
  }

 else if (pantalla==4) {
    if (mouseX<410 && mouseX>255 && mouseY<430 && mouseY>370) {
      pantalla = 0;
      contador = 0;
      movx=0;
      velx=1;
      movText=0;
      velText=1;
      x=320;
    }
  }
}
