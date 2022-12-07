PImage img;
int maxAgents;
ArrayList agentList;

float rad;

void setup(){
  size(600,818);
  img = loadImage("portrait02.png");
  img.resize(width, height);
  
  maxAgents = 100000;
  agentList = new ArrayList();
  rad = 5;
}

void draw(){
  background(255);
  
  if(agentList.size() < maxAgents){
    Agent myAgent = new Agent(new PVector(random(width/2-30, width/2+30), random(height/2-30, height/2+30)), rad);
    agentList.add(myAgent);
  }
  
  for(int i = 0; i < agentList.size(); i ++){
    Agent tempAgent = (Agent)agentList.get(i);
    tempAgent.run();
  }
}

void keyPressed() {
  if (key == 's') {
    save("output/HodginCirclePark.png");
  }
}
