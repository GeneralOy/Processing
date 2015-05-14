void setup()
{
  size(1000,1000, P3D);
  for(int i=2002;i<2016;i++)
  {
    print(i + " ");
  }
}
void draw()
{
  translate(500, 500, 0); 
  rotateY(mouseX);
  fill(0, mouseY, mouseX);
  box(75, mouseY, 75);
  textSize(50);
  text("Total Randomness by Arker_1",500, 500);
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
