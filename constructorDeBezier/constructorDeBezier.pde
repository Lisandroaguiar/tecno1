// Parámetros de la curva de Bezier
float x0, y0;  // Punto inicial
float x1, y1;  // Primer punto de control
float x2, y2;  // Segundo punto de control
float x3, y3;  // Punto final

void setup() {
  size(600, 400);
  
  // Inicializar los puntos de control en posiciones iniciales
  x0 = 100;
  y0 = height / 2;
  x1 = 200;
  y1 = 100;
  x2 = 400;
  y2 = 300;
  x3 = width - 100;
  y3 = height / 2;
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
