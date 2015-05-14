void setup()
{
  size(480, 360);
  fill(0, 0, 0);
}
void draw()
{
  PImage face = loadImage("itstheduck.jpg");
  image(face,0,0);
  ellipse(190, 100, 50, 50);
  ellipse(285, 115, 50, 50);
  fill(mouseY,mouseX,-mouseY);
  ellipse(190, 100, 30, 30);
  ellipse(285, 115, 30, 30);
  fill(mouseX, 255, mouseY);
  tint(mouseX, mouseY, -mouseX);
}
