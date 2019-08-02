void setup() {
  size(500,500);
  background(50,50,50);
  
}
void draw(){
  float x = random(500);
  float y = random(500);
  float size = random(100);
  float colorRandom = random(360);
  float colorRandom2 = random(360);
  float colorRandom3 = random(360);
  ellipse(x,y, size, size);
  fill(colorRandom,colorRandom2,colorRandom3);
  
//x+=1;
//y+=1;
}
float frequency = .01;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
