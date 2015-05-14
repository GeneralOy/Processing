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
  if(mouseX < 175 || mouseX > 215 || mouseY < 85 || mouseY > 115){
    mouseX = 190;
    mouseY = 100;
  }
  fill(mouseY,mouseX,-mouseY);
  ellipse(mouseX, mouseY, 21, 21);
  ellipse(mouseX + 95, mouseY + 15, 21, 21);
  fill(mouseX, 255, mouseY);
  //tint(mouseX, mouseY, -mouseX);
}
