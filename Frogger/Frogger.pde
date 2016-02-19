PImage Frogger;
PImage background;
PImage Log;
PImage truck1;
PImage truck2;
public int x;
public int y;
public int T;
public int R;
public int T2;
public int t3;
public int Lefttruck;
public int Righttruck;
public int Lefttruck2;
public int Righttruck2;
void setup() {
  Frogger = loadImage("Frogger.png");
  background = loadImage("Frogger Background.png");
  Log = loadImage("FroggerLog.png");
  truck1 = loadImage("Froggertruck1.png");
  truck2 = loadImage("FroggerTruck2.png");
  size(background.width, background.height);
  x = 250;
  y = 450;
  T = 20;
  T2 = 150;
  t3 = -50;
  R = 600;
  Lefttruck = 20;
  Lefttruck2 = 150;
  Righttruck = 600;
  Righttruck2 = 700;
}

void draw() {
  background(background);
  image(Log, T2, 60);
  image(Log, t3, 105);
  image(Log, T, 195);
  image(Log, R, 150);
  image(truck1, Lefttruck, 275);
  image(truck1, Lefttruck2, 365);
  image(truck2, Righttruck, 320);
  image(truck2, Righttruck2, 410);
  image(Frogger, x, y);
  T += 5;
  T2 += 7;
  t3 += 4;
  R -= 5;
  
  if(T > 700){
    T = -100;
  }
  if(R < -200){
    R = 600;
  }
  if(T2 > 700){
    T2 = -100;
  }
  if(t3 > 700){
    t3 = -100;
  }
  
/////
if(T > 700){
    T = -100;
  }
  if(R < -200){
    R = 600;
  }
  if(T2 > 700){
    T2 = -100;
  }
  if(t3 > 700){
    t3 = -100;
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
