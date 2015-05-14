void setup(){
  size(500, 500,P3D);
  for(int i=0; i < 100; i+=5){
      yellow();
      black();
      green();
      red();
  }
}

void draw(){
  /*for(int i=0; i < 100; i+=5){
      //noStroke();
      lights();
      translate(i, i, 0);
      sphere(28);
      fill(255,238,0);
      translate(i+5, i+5, 0);
      sphere(28);
      fill(0,0,0);
  }*/
}
void yellow(){
  int i = 0;
  noStroke();
  lights();
  translate(i+=5, i+=5, 0);
  sphere(28);
  fill(255,238,0);
}
void black(){
  int j = 0;
  noStroke();
  translate(j+=5, j+=5, 0);
  sphere(28);
  fill(0,0,0);
}
void green(){
  int x = 0;
  noStroke();
  translate(x+=5, x+=5, 0);
  sphere(28);
  fill(0,250,0);
}
void red(){
  int x = 0;
  noStroke();
  translate(x+=5, x+=5, 0);
  sphere(28);
  fill(250,0,0);  
}
