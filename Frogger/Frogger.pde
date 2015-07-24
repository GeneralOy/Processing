PImage Frogger;
PImage background;
PImage Log;
PImage truck1;
PImage truck2;
public int x;
public int y;
public int T;
void setup() {
  Frogger = loadImage("Frogger.png");
  background = loadImage("Frogger Background.png");
  Log = loadImage("FroggerLog.png");
  truck1 = loadImage("Froggertruck1.png");
  truck2 = loadImage("FroggerTruck2.png");
  size(background.width, background.height);
  x = 250;
  y = 450;
  T = 0;
}

void draw() {
  background(background);
  image(Log, T - 150, 60);
  image(Log, T - 50, 105);
  image(Log, T + 20, 195);
  image(Log, T - (4 * T), 150);
  image(Frogger, x, y);
  T += 5;
  if(T > 600){
    T = -100;
  }
}

public void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP){
      Frogger = loadImage("Frogger.png");
      y -= 45;
    }
    if(keyCode == LEFT){
      Frogger = loadImage("Frogger 2.png");
      x -= 45;
    }
    if(keyCode == RIGHT){
      Frogger = loadImage("Frogger 3.png");
      x += 45;
    }
    if(keyCode == DOWN){
      Frogger = loadImage("Frogger 4.png");
      y += 45;
    }
  }
}
