void CuadradoMedio() {
  float forx, fory, c1, c2, c3, c4, c5, c6;
  forx=24;
  fory=6;
  c1=0;
  c2=0;
  c3=0;
  c4=255;
  c5=255;
  c6=255;

  push();
  translate(400, 0);
  if (col==1) {
    c1=255;
    c2=255;
    c3=255;
    c4=0;
    c5=0;
    c6=0;
  }
  else   if (col==2) {
    c1=24;
    c2=0;
    c3=103;
    c4=255;
    c5=49;
    c6=56;
  }
  for (int i=0; i<forx; i++) {
    for (int y=0; y<=fory; y++) {
      if ((i+y)%2==0) {
        fill(c1, c2, c3);
      } else {
        fill(c4, c5, c6);
      }
      rect(i*10+80, y*35.8+89.5, 10, 35.8);
    }
  }


  pop();
}
