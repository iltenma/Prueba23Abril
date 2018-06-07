int x; 
int y;
int estado;
int estadoX, estadoY;
int velocidad;

void setup () {
size (600, 600);
x=0;
y=(int) random (30);
frameRate (15);
estadoX = 0; // estado 0 hacia adelante
//estado 1 hacia atras
estadoY = 0;
velocidad = 25;
}

void draw () {
  
background (185,245,245);
color CTati = color (0, 40, 255);
fill (CTati);
noStroke ();
rect (200, 200, 200, 200);

  float r = random (255);
  float e = random (255);
  float d = random (255);
  noStroke ();
  fill (r, e, d);
  rect (100, 100, 100, 100);
  
  noStroke ();
  fill (r, e, d);
  rect (400, 100, 100, 100);
  
  if (estadoX==0) x=x+velocidad;
    else x=x-velocidad;
    // actualizar estado
    
 if (estadoX==0) {
   {if (x>=500) estadoX=1;}
 } else {
   if (x<=0) estadoX = 0;
 }

if (estadoY==0) y=y+velocidad;
    else y=y-velocidad;
    // actualizar estado
    
 if (estadoY==0) {
  {if (y>=500) estadoY=1;}
 } else {
  if (y<=0) estadoY = 0;
 }
 
  noStroke ();
  fill (r, e, d);
  rect (x, y, 100, 100);
  
  noStroke ();
  fill (r, e, d);
  rect (100, 400, 100, 100);

}