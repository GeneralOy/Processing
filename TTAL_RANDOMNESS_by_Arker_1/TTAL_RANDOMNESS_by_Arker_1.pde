void setup()
{
  size(500, 500, P3D);
}

void draw()
{
  translate(250, 250, 0); 
  rotateY(mouseX);
  fill(150, mouseY, 150);
  box(75, mouseY, 75);
  textSize(50);
  text("Total Randomness by Arker_1",250, 250);
  if (mousePressed)
  {
  background(0);
  noStroke();
  directionalLight(126, 126, 126, 0, 0, -1);
  ambientLight(102, 102, 102);
  translate(32, 50, 0);
  rotateY(PI/5);
  box(40);
  translate(60, 0, 0);
  sphere(30);
  textSize(50);
  text("Total Randomness by Arker_1",250, 250);
  }
}
