void setup() {
  size(400, 400);
}

void draw()
{
  for(int i=1;i<600;i+=80)
  {    
     noFill();
     stroke(random(0,255),random(0,255),random(0,255));
     strokeWeight(80);
     circle(width/2,height/2,i);
  }
  saveFrame();
}
  
