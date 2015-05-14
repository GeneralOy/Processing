PImage Mustache;
PImage Troll;
void setup()
{
  size(500, 650);
  PImage Background = loadImage("Wiki-background.png");
  Background.resize(500, 650);
  background(Background);
  Mustache = loadImage("mustache.png");
  Troll = loadImage("Trollface.png");
  Mustache.resize(75, 50);
  Troll.resize(75, 75);
}
void draw()
{
  if (mousePressed)
  {
    image(Mustache, mouseX-25, mouseY-20);
  } //else if(mousePressed && (mouseButton = RIGHT))
  //{
    //image(Troll, mouseX-25, mouseY-20);
  //}
}
