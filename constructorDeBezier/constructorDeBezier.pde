// Parámetros de la curva de Bezier
float x0, y0;  // Punto inicial
float x1, y1;  // Primer punto de control
float x2, y2;  // Segundo punto de control
float x3, y3;  // Punto final
int tamX, tamY; 
float posX, posY, posXtxt,posYtxt;
void setup() {
  
  
  size(800, 400);
  
  // Inicializar los puntos de control en posiciones iniciales
  x0 = 100;
  y0 = height / 2;
  x1 = 200;
  y1 = 100;
  x2 = 400;
  y2 = 300;
  x3 = width - 100;
  y3 = height / 2;
  tamX=100;
  tamY=33;
  posY=height*0.75+tamY;
  posX= width/2-tamX/2;
  posXtxt=posX+tamX/6.7;
  posYtxt=posY+tamY/1.7;
}

void draw() {
  background(255);
  
  // Dibujar la curva de Bezier
  stroke(0);
  noFill();
  bezier(x0, y0, x1, y1, x2, y2, x3, y3);
  
  // Dibujar líneas que conectan los puntos de control con la curva de Bezier
  stroke(0, 100);
  line(x0, y0, x1, y1);
  line(x2, y2, x3, y3);
  
  // Dibujar los puntos de control
  fill(255, 0, 0);
  noStroke();
  ellipse(x0, y0, 10, 10);
  ellipse(x1, y1, 10, 10);
  ellipse(x2, y2, 10, 10);
  ellipse(x3, y3, 10, 10);
  
  // Mostrar las coordenadas de los puntos de control
  fill(0);
  text("P0 (" + x0 + ", " + y0 + ")", x0 + 10, y0 - 10);
  text("P1 (" + x1 + ", " + y1 + ")", x1 + 10, y1 - 10);
  text("P2 (" + x2 + ", " + y2 + ")", x2 + 10, y2 - 10);
  text("P3 (" + x3 + ", " + y3 + ")", x3 + 10, y3 - 10);
  push();
  fill(255,0,0,30);
  stroke(255,0,0,100);
  strokeWeight(1.5);
  rect(posX,posY,tamX,tamY);
  pop();
  text("Generar bezier",posXtxt,posYtxt);
  
}

void mouseDragged() {
  // Mover los puntos de control con el mouse
  if (dist(mouseX, mouseY, x0, y0) < 10) {
    x0 = mouseX;
    y0 = mouseY;
  } else if (dist(mouseX, mouseY, x1, y1) < 10) {
    x1 = mouseX;
    y1 = mouseY;
  } else if (dist(mouseX, mouseY, x2, y2) < 10) {
    x2 = mouseX;
    y2 = mouseY;
  } else if (dist(mouseX, mouseY, x3, y3) < 10) {
    x3 = mouseX;
    y3 = mouseY;
  }
}

void mouseClicked(){

if(mouseX> posX && mouseX<posX+tamX && mouseY > posY && mouseY< posY+tamY){
  println("BEZIER GENERADO!!! copia y pega en tu sketch:");
  println("bezier("+x0+","+y0+","+x1+","+y1+","+x2+","+y2+","+x3+","+y3+");");
}

}

void mouseMoved(){

if(mouseX> posX && mouseX<posX+tamX && mouseY > posY && mouseY< posY+tamY){
 cursor(HAND);
}
  else if (dist(mouseX, mouseY, x0, y0) < 10) {
cursor(HAND);
  } else if (dist(mouseX, mouseY, x1, y1) < 10) {
cursor(HAND);

  } else if (dist(mouseX, mouseY, x2, y2) < 10) {
cursor(HAND);

  } else if (dist(mouseX, mouseY, x3, y3) < 10) {
cursor(HAND);

  }
else{cursor(ARROW);}
}
