PImage Frogger;
PImage background;
PImage Log;
PImage truck1;
PImage truck2;
public int x;
public int y;
public int T;
public int R;
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
  R = 600;
}

void draw() {
  background(background);
  image(Log, T - 150, 60);
  image(Log, T - 50, 105);
  image(Log, T + 20, 195);
  image(Log, R, 150);
  image(Frogger, x, y);
  T += 5;
  R -= 5;
  if(T > 600){
    T = -100;
  }
  if(R < 0){
    T = 600;
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
