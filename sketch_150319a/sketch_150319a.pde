void setup(){
size(1000, 1000);
for(int i=50; i >0; i--)
{
  if (i % 2 == 1){
    fill(255, 0, 0);
  }else{
    fill(0, 0, 0);
  }
    ellipse(500, 500,(i * 21), (i * 21));
  
  
}
}
