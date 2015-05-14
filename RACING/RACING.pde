//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.
int X = 50;
void setup() {
  size(800, 200);
}

void draw() {
  //3. make it a nice color
   fill(0,500,50);
  //4. if the mouse is pressed...
     if(mousePressed)
     {
       //5. ... change the X co-ordinate so that the dot moves to the right
       X=X+175;
     }
  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
  ellipse(X, 100, 100, 100);
//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)
  playSound();
//7. Use this method to play a ding when your dot crosses the finish line. 


}

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
  if (X > 800) {// Copyright Wintriss Technical Schools 2013
     if (X > 825)
     {
       Minim minim = new Minim(this);
      AudioPlayer sound = minim.loadFile("2SED4AIRHORN.wav");
      sound.play();
      soundPlayed = true;
     }
  }
}

