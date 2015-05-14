 import ddf.minim.*;
 AudioSample sound;
void setup()
{
  size(500, 500);
  background(50, 150, 50);
  PImage pepperoni = loadImage("BACON.gif");
   ellipse(250, 250, 250, 250);
   fill(232,62,0);
   ellipse(250, 250, 235, 235);
   fill(255, 232, 16);
   ellipse(250, 250, 225, 225);
   fill(202,128,0);
   ellipse(230, 245, 25, 25);
   Minim minim = new Minim(this);    //in the setup method      
  sound = minim.loadSample("Oh_Baby_A_Triple_Original_Reupload.wav");  
}
void draw()
 {
   PImage pepperoni = loadImage("BACON.gif");
   PImage BACON = loadImage("canadianbacon.ppm.gif");
   if (mousePressed && (mouseButton == LEFT))
   {
     image(pepperoni, mouseX, mouseY);
     sound.trigger(); 
   }else if (mousePressed && (mouseButton == RIGHT))
   {
     image(BACON, mouseX, mouseY);
     sound.trigger();
   }
 }
