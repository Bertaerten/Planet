

Planet bob ;

void setup(){
  size (500, 500);
bob = new Planet(30, 12, 200);
}

void draw(){
circle(bob.getPos().x,bob.getPos().y, 10);
 Background();
}

void Background(){
  fill(0, 10);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(random(width), random(height), 2, 2);
}
