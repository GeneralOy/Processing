void setup() {
  size(800, 800, P3D);
}

void draw() {
  fill(mouseX, mouseY, 50);
  lights();
  translate(mouseX, mouseY, mouseX);
  sphere(50);
  if (mousePressed)
  {
    rotateY(10);
    rotateX(10);
  }
}
// Copyright Wintriss Technical Schools 2013
