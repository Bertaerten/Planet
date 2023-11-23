

Planet bob ;
Planet voti;
Planet simon;
float timestep = 0.4;

PVector up;

ArrayList<Planet> bobs;

void setup() {
  size(600, 400);
  frameRate(120);
  
  up = new PVector(0,-0.1);

  bob = new Planet(30, 12, 200);
  voti= new Planet(100, 200, 20);
  simon= new Planet(30, 200, 20);

  bobs= new ArrayList<Planet>();

  bobs.add(bob);
  bobs.add(voti);
  bobs.add(simon);
}

void draw() {
  Background();

  for (int i = 0; i < bobs.size(); i++) {
    bobs.get(i).update(timestep);
    circle(bobs.get(i).getPos().x, bobs.get(i).getPos().y, 10);
    
    if(bobs.get(i).getPos().y>300){
      bobs.get(i).setAcc(up);
    }
    
  }
}

void Background() {
  fill(0, 10);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(random(width), random(height), 2, 2);
}
