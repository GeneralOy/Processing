//centered at bottom of window ^use a var for BRICK_WIDTH, ^BRICK_HEIGHT, ^BRICKS_IN_BASE ^2 FOR loops ^only use Rect() once ^
//finished around 25 min - 3:35 ish to 4:00
public int BRICK_WIDTH;
public int BRICK_HEIGHT;
public int BRICKS_IN_BASE;
public int BRICKS_CURRENT_LAYER;
public int xLoc;
public int yLoc;
void setup() {
  background(0);
  BRICK_WIDTH = 30;
  BRICK_HEIGHT = 12;
  BRICKS_IN_BASE = 14;
  BRICKS_CURRENT_LAYER = BRICKS_IN_BASE;
  size(500,500);
  xLoc = (width/2)-((BRICK_WIDTH*BRICKS_IN_BASE)/2);
  yLoc = 500-BRICK_HEIGHT;
}

void draw() {
   MakePyramid();
}

public void MakePyramid() {
  for(int i = 1; i<BRICKS_IN_BASE+1; i++) {
     for(int z = 1; z<BRICKS_CURRENT_LAYER+1; z++) {
       stroke(9);
       rect(xLoc,yLoc,BRICK_WIDTH,BRICK_HEIGHT);
       xLoc += BRICK_WIDTH;
     }
     BRICKS_CURRENT_LAYER -= 1;
     xLoc = (width/2)-((BRICK_WIDTH*BRICKS_IN_BASE)/2)+(BRICK_WIDTH/2)*i;
     yLoc -= BRICK_HEIGHT;
   }
}
                            /*vVv optimizing attempts vVv*/
//public void MapePyramidEfficient() {//for(int yLoc = 500-BRICK_HEIGHT; yLoc<(BRICKS_IN_BASE+1)*(BRICK_HEIGHT); yLoc-=BRICK_HEIGHT) {
//for(int xLoc = 1; xLoc<BRICKS_CURRENT_LAYER+1; xLoc++) {//stroke(9);//rect(xLoc,yLoc,BRICK_WIDTH,BRICK_HEIGHT);//xLoc += BRICK_WIDTH;
//}//BRICKS_CURRENT_LAYER -= 1;//xLoc = (width/2)-((BRICK_WIDTH*BRICKS_IN_BASE)/2)+(BRICK_WIDTH/2)*i;//yLoc -= BRICK_HEIGHT;//}//}