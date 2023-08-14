void setup() {
  size(800, 600);
  background(240);
  stroke(255, 0, 0); // Color rojo
}

void draw() {
  background(240); // Limpiar el fondo en cada cuadro
  line(width / 2, height / 2, mouseX, mouseY); // Dibuja la línea
}
