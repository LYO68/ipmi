float CuadX, CuadY,c1,c2,c3,c4,c5,c6;
int col;
PImage ilusion;
void setup() {
  size(800, 400);
  
  CuadX= 10;
  CuadY=39;
  col=0;
  c1=255;
  c2=255;
  c3=255;
  c4=0;
  c5=0;
  c6=0;
 
  ilusion = loadImage("ilusion.png");

}

void draw() {

  push();
  translate(400, 0);
  if(col==0){
  
   c1=255;
  c2=255;
  c3=255;
  c4=0;
  c5=0;
  c6=0;
  
  
  }
  else if (col==1) {
    c1=24;
    c2=0;
    c3=103;
    c4=255;
    c5=49;
    c6=56;
  }
  else   if (col==2) {
    c1=255;
    c2=235;
    c3=46;
    c4=141;
    c5=135;
    c6=180;
  }
  for (int i=0; i<CuadX; i++) {
    for (int y=0; y<=CuadY; y++) {
      if ((i+y)%2==0) {
        fill(c1,c2,c3);
      } else {
        fill(c4,c5,c6);
      }
      rect(i*40, y*10, 40, 9);
    }
  }

  pop();
  CuadradoMedio();
  

 image(ilusion, 0, 0, 400, 400);
  
  
 }
 void mousePressed() {
  if (col==0) {
    col=1;
  } else if (col==1) {
    col=2;
  }
  else if(col<=3){
  col=0;
  }
}
