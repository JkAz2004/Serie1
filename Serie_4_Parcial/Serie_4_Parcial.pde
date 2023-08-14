int circleSize = 30; // Tamaño de los círculos
color[] colors = {color(255, 0, 0), color(0, 255, 0), color(0, 0, 255)}; // Colores disponibles

void setup() {
  size(800, 600);
  background(240);
}

void draw() {
  // No es necesario escribir nada aquí
}

void keyPressed() {
  if (key == '1' || key == '2' || key == '3') {
    int randomColorIndex = int(random(colors.length));
    fill(colors[randomColorIndex]);
    
    float x = random(width);
    float y = random(height);
    ellipse(x, y, circleSize, circleSize);
  }
}
