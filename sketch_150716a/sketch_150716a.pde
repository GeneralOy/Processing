import ddf.minim.*;
Minim minim;        //as a member variable
AudioPlayer song;    
PImage pictureOfRecord;
void setup() {
  minim = new Minim(this);  
  song = minim.loadFile("Mango_-_animated_music_video_-_MrWeebl.aiff", 512);
  pictureOfRecord = loadImage("pictureOfRecord.png");
  size(pictureOfRecord.width, pictureOfRecord.width);
}

static int rotation = 50;
void draw() {
  if(mousePressed) {
    rotateImage(pictureOfRecord, rotation);
    rotation += 50;
    song.play();
  }else{
    song.pause();
  }
  image(pictureOfRecord, 0, 0);
}

void rotateImage(PImage image, int amountToRotate) {
    translate(width/2, height/2);
    rotate(amountToRotate*TWO_PI/360);                              
    translate(-image.width/2, -image.height/2);
  
}

