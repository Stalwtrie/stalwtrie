import geomerative.*;

RFont f;
RShape grp;
RPoint[] points;

void setup(){
  size(1000,400);
  frameRate(72);

  background(255);
  fill(255,102,0);
  stroke(0);
  
  RG.init(this); 
  grp = RG.getText("G eomerative", "sjtu2022-liuqingrong.ttf", 72, CENTER);
  smooth();
}

void draw(){
  background(0);
  translate(width/2, height/2);
  fill(#FA8947);
  stroke(#D8631F);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseY, 0, height, 40, 200));
  points = grp.getPoints();
 
  if(points != null){
    noFill();
    stroke(#286ECE);
    beginShape();
    for(int i=0; i<points.length; i++){
      vertex(points[i].x, points[i].y);
    }
    endShape();
  
    fill(0);
    stroke(0);
    for(int i=0; i<points.length; i++){
      ellipse(points[i].x, points[i].y,5,5);  
    }
  }
}
