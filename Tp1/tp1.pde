//Lautaro Oviedo 
PImage retrato =loadImage("retrato.png");
size(800,400);

line(width/2,0,width/2,400);
image(retrato, 0,0,400,400);
translate(400,0);

noStroke();

//cabeza
fill(185,128,103);
ellipse(200,200,200,300);
ellipse(200,190,250,300);

//pelo
fill(57,50,40);
ellipse(85,180,30,100);
ellipse(315,180,30,100);
ellipse(200,50,70,80);
bezier(75,150,100,50,150,25,185,25);
bezier(73,150,100,100,150,150,180,25);
bezier(200,20,250,30,290,30,325,145);
bezier(200,13,250,120,290,110,325,144);
ellipse(180,75,60,30);
ellipse(230,75,60,30);

//ojos
fill(255);
ellipse(150,200,60,20);
ellipse(250,200,60,20);
fill(71,55,48);
ellipse(150,200,30,20);
ellipse(250,200,30,20);
fill(0);
ellipse(150,200,10,10);
ellipse(250,200,10,10);
fill(89,66,55);
rect(120,160,60,15);
rect(220,160,60,15);
//nariz
fill(185,128,103);
stroke(1);
triangle(200,230,180,260,220,260);
ellipse(185,254,20,20);
ellipse(215,254,20,20);

//boca
fill(155,94,81);
ellipse(200,300,100,10);
noFill();
bezier(135,295,130,305,270,300,260,295);
