PImage Frogger;
PImage background;
PImage Log;
PImage truck1;
PImage truck2;
public boolean LogStuffs;
public boolean LogStuffs2;
public boolean dontMove;
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
  size(516, 560);
  LogStuffs = false;
  LogStuffs2 = false;
  dontMove = false;
  x = 250;
  y = 460;
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
  LogStuffs = false;
  LogStuffs2 = false;
  background(background);
  image(Log, T2, 60);
  image(Log, t3, 105);
  image(Log, T, 195);
  image(Log, R, 150);
  image(Frogger, x, y);
  image(truck1, Lefttruck, 280);
  image(truck1, Lefttruck2, 370);
  image(truck2, Righttruck, 320);
  image(truck2, Righttruck2, 420);
  T += 5;
  T2 += 7;
  t3 += 4;
  R -= 5;
  Lefttruck += 4;
  Lefttruck2 += 4;
  Righttruck -=5;
  Righttruck2 -=4;
  //vLOGSv//
  if(T > 700){
    T = -100;
    LogStuffs = true;
  }
  if(R < -200){
    R = 600;
    LogStuffs = true;
  }
  if(T2 > 700){
    T2 = -100;
    LogStuffs = true;
  }
  if(t3 > 700){
    t3 = -100;
    LogStuffs = true;
  }
  
//vLOGSv//
if(T > 700){
    T = -100;
    LogStuffs2 = true;  
  }
 
  if(R < -200){
    R = 600;
    LogStuffs2 = true;  
  }
  if(T2 > 700){
    T2 = -100;
    LogStuffs2 = true;  
  }
  if(t3 > 700){
    t3 = -100;
    LogStuffs2 = true;  
  }
////
if(Lefttruck > 800) {
  Lefttruck = -100;
}if(Lefttruck2 > 800) {
  Lefttruck2 = -100;
}if(Righttruck < -150) {
  Righttruck = 620;
}if(Righttruck2 < -200) {
  Righttruck2 = 620;
}
////vHere, make it so the Frogger can jump from one side to other 
////like the logs and stuff
if(y > 200) {
if(x < -50) {
  x = 500;
}if(x > 500) {
  x = -50;
}}//if(key == CODED) {
    if(y < 200) {
    if(x < 5) {
      x = 5;
    }if(x > 450) {
      x = 420;
    }
}else if(y < 200) {
  if(x < 5) {
  x = 50;
}
if(x > 450) {
  x = 450;
}
}if(y > 470){
        y = 460;
    }}

////vDetectors for trucksv////
//if(truckX + truck.width <= frogger.x && truckX >= frogger.x + frogger.width){
  

////vDetectors  for  logsv////

//////////vMOVEMENTv//////////
public void keyPressed() {
    if(key == CODED) {
    if(keyCode == UP){
      Frogger = loadImage("Frogger.png");
      y -= 44;
    }
    if(keyCode == LEFT){
      Frogger = loadImage("Frogger 2.png");
      x -= 44;
    }
    if(keyCode == RIGHT){
      Frogger = loadImage("Frogger 3.png");
      x += 44;
    }
    if(keyCode == DOWN){
      Frogger = loadImage("Frogger 4.png");
      y += 44;
      
  }}
  
}
