void setup() {
  size(800, 800);
  noLoop();
  background(240);
}

void draw() {
  for (int i = 0; i < 100; i++) {
    float shapeType = random(1);
    float x = random(width);
    float y = random(height);
    float size = random(20, 100);
    color fillColor = color(random(255), random(255), random(255), 150);
    
    noStroke();
    fill(fillColor);
    
    if (shapeType < 0.5) {
      ellipse(x, y, size, size);
    } else {
      rectMode(CENTER);
      rect(x, y, size, size);
    }
  }
}
