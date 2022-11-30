int colors[]={#FF8A15, #FFFFFF, #0DACFF, #F58FB3};

void setup() {
  size(600, 600);
  background(255);
  frameRate(16);
}

void draw() {
  background(255);
  for(float i=random(0,width);i<width;i+=100){
    noStroke();
    fill(0);
    rect(i,random(0,600),8,45);
    rect(random(0,600),i,30,8);
    
   
    noFill();
    stroke(0);
    strokeWeight(6);
    rect(random(0,600),random(0,600),60,100);
  
   
    fill(colors[(int)random(0,4)]);
    noStroke();
    rect(random(0, 600), random(0, 600), random(80, 300), random(100, 200));
  }
saveFrame();}
