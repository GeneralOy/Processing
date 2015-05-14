//DO NOT PRESS THE RIGHT CLICK BUTTON-DO NOT
void setup()
{
  size(480, 360);
  fill(0, 0, 0);
}
void draw()
{
  PImage face = loadImage("itstheduck.jpg");
  image(face, 0, 0);
  ellipse(190, 100, 50, 50);
  ellipse(285, 115, 50, 50);
  if (mouseX < 175) {
    mouseX = 176;
    //mouseY = 100;
  }
  else if (mouseX > 210) {
    mouseX = 209;
  }
  if (mouseY < 85 ) {
    mouseY = 86;
  }
  else if (mouseY > 115) {
    mouseY = 114;
  }
  fill(mouseY, mouseX, -mouseY);
  if (mouseButton == LEFT) {
    fill(random(255), random(255), random(255));
  }
  ellipse(mouseX, mouseY, 21, 21);
  ellipse(mouseX + 95, mouseY + 15, 21, 21);
  if (mouseButton == RIGHT) {
    playSound();
  }
  fill(mouseX, 255, mouseY);
  //tint(mouseX, mouseY, -mouseX);
}
import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
  Minim minim = new Minim(this);
  AudioPlayer sound = minim.loadFile("Mango_-_animated_music_video_-_MrWeebl.aiff");
  sound.play();
  soundPlayed = true;
}

