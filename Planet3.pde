

Planet bob ;
Planet voti;
Planet simon;
Planet lærke;
float timestep = 0.1;

PVector target1;
PVector target2;

ArrayList<Planet> ballz;

void setup() {
  size(1000, 600);
  frameRate(120);
  
  target1 = new PVector(0,0);
  target2 = new PVector(0,0);

  bob = new Planet(width/2, height/2, 1000);
  voti= new Planet(100, 500, 150);
  simon= new Planet(830, 250, 150);
  lærke = new Planet(569, 400, 50);

  ballz= new ArrayList<Planet>();
    ballz.add(bob);
    ballz.add(voti);
    ballz.add(simon);
    ballz.add(lærke);
}

void draw() {
  Background();

 
  for (int i = 0; i < ballz.size(); i++) {
    target1.setMag(1);
    target2.setMag(1);
    
    for(int j=ballz.size()-1;j>i;j--){
    
    
    target2.set((ballz.get(i).getPos().x  -  ballz.get(j).getPos().x)  ,  (ballz.get(i).getPos().y)  -  ballz.get(j).getPos().y);
    
    target1.set((ballz.get(j).getPos().x  -  ballz.get(i).getPos().x)  ,  (ballz.get(j).getPos().y)  -  ballz.get(i).getPos().y);
    
    float r = dist(ballz.get(j).getPos().x, ballz.get(j).getPos().y, ballz.get(i).getPos().x, ballz.get(i).getPos().y);
    if(r>15){
    target1.setMag((ballz.get(i).getMass()*ballz.get(j).getMass())/(sq(r)));
    target2.setMag((ballz.get(i).getMass()*ballz.get(j).getMass())/(sq(r)));
    //acc1.set((pos2.x-pos1.x),(pos2.y-pos1.y))
    //acc2.set((pos1.x-pos2.x),(pos1.y-pos2.y))
    // |FG|= (M1*M2)/sq(pos2-pos1)
    
    ballz.get(i).setAcc(target1.div(ballz.get(i).getMass()));
    ballz.get(j).setAcc(target2.div(ballz.get(j).getMass()));
    }
   
    
    println(r);
    }
    
    
  }
  
  
  
  
  
  for (int i = 0; i < ballz.size(); i++) {
    ballz.get(i).update(timestep);
    circle(ballz.get(i).getPos().x, ballz.get(i).getPos().y, ballz.get(i).getSize());
    
    //if(ballz.get(i).getPos().y>300){
      //ballz.get(i).setAcc(up);
    //}
    
  }
}

void Background() {
  fill(0, 10);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(random(width), random(height), 2, 2);
}
