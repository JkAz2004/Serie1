int rows = 5; // Número de filas en la pirámide
float ellipseSize = 40; // Tamaño de cada elipse
color[][] pyramidColors; // Arreglo para almacenar los colores de las elipses

void setup() {
  size(400, 400);
  noLoop();
  
  pyramidColors = new color[rows][];
  for (int row = 0; row < rows; row++) {
    pyramidColors[row] = new color[row + 1];
    for (int col = 0; col <= row; col++) {
      pyramidColors[row][col] = color(random(255), random(255), random(255)); // Colores iniciales aleatorios
    }
  }
}

void draw() {
  background(240);
  
  float startX = (width - (rows * ellipseSize)) / 2; // Posición de inicio en x
  
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col <= row; col++) {
      float x = startX + col * ellipseSize; // Posición en x de la elipse
      float y = height - (row + 1) * ellipseSize; // Posición en y de la elipse
      
      fill(pyramidColors[row][col]); // Color de la pirámide
      ellipse(x, y, ellipseSize, ellipseSize);
    }
  }
}

void mouseClicked() {
  // Cambia el color de la pirámide al hacer clic
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col <= row; col++) {
      pyramidColors[row][col] = color(random(255), random(255), random(255));
    }
  }
  redraw(); // Redibuja la pirámide con los nuevos colores
}
