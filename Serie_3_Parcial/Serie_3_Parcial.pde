float starX; // Posición en x de la estrella
float starY; // Posición en y de la estrella
float starSpeedX; // Velocidad en la dirección x
float starSpeedY; // Velocidad en la dirección y
float starSize = 80; // Tamaño de la estrella

void setup() {
  size(800, 600);
  starX = width / 2; // Inicializa la posición en el centro en x
  starY = height / 2; // Inicializa la posición en el centro en y
  starSpeedX = 2; // Velocidad en x
  starSpeedY = 1; // Velocidad en y
}

void draw() {
  background(240);
  
  // Actualiza la posición de la estrella
  starX += starSpeedX;
  starY += starSpeedY;
  
  // Comprueba los límites de la pantalla
  if (starX < 0 || starX > width) {
    starSpeedX *= -1; // Cambia la dirección en x
  }
  if (starY < 0 || starY > height) {
    starSpeedY *= -1; // Cambia la dirección en y
  }
  
  // Dibuja la estrella en su posición actual
  fill(255, 215, 0); // Color de la estrella (amarillo oro)
  drawStar(starX, starY, starSize); // Llama a la función para dibujar la estrella
}

void drawStar(float x, float y, float size) {
  float angle = TWO_PI / 5; // Ángulo entre cada punta de la estrella
  
  beginShape();
  for (int i = 0; i < 5; i++) {
    float x1 = x + cos(angle * i) * size / 2; // Coordenada x de la punta
    float y1 = y + sin(angle * i) * size / 2; // Coordenada y de la punta
    vertex(x1, y1);
    
    float x2 = x + cos(angle * i + angle / 2) * size; // Coordenada x del punto intermedio
    float y2 = y + sin(angle * i + angle / 2) * size; // Coordenada y del punto intermedio
    vertex(x2, y2);
  }
  endShape(CLOSE);
}
