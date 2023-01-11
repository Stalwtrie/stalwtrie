import processing.pdf.*;
PImage[] img;
boolean savePDF;

void setup() {
  size(900, 600);
  background(255);
  img=new PImage[9];
  for (int j=0; j<img.length; j++) {
    String str=j+".tiff";
    img[j]=loadImage(str);
    img[j].resize(width, height);
  }
}

void draw() {
  background(#7BBC7F);
  for (int x=0; x<100; x++)
    for (int index=0; index<img.length; index++) {
      copy(img[index], x*9+index, 0, 1, height, x*9+index, 0, 1, height);
    }

  for (int i=-40; i<40; i++) {
    fill(#1A3E1C);
    noStroke();
    rect(i*9+mouseX, 0, 8, height);
  }

if(savePDF) {
    beginRecord(PDF, "output/Line.pdf"); 
  }
  
  //for(int y = 0; y < img.length; y ++){
  //  img.get(y).draw();
  //}
  
  if(savePDF) {
    endRecord();
    savePDF = false; 
  }

}
