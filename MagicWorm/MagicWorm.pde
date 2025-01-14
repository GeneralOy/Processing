void setup() {
  size(500,500);
  background(50,50,50);
  
}

void draw(){
  //background(50,50,50);
  
  float x = random(5000);
  float y = random(5000);
  float size = random(100);
  float colorRandom = random(5000);
  float colorRandom2 = random(255);
  float colorRandom3 = random(255);
  float colorRandom4 = random(255);
  ellipse(getWormX(50),getWormY(50), size, size);
  makeMagical(colorRandom2,colorRandom3, colorRandom4);
  fill(colorRandom,colorRandom2,colorRandom3);
  
//x+=1;
//y+=1;
}

 float frequency = .01;
float noiseInterval = PI; 

void makeMagical(float x,float y, float x2) {
  fill( x, y, x2,10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
