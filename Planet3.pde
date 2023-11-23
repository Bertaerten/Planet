

Planet bob ;
Planet voti;
float timestep = 1;

ArrayList<Planet> bobs;

void setup(){
size(600, 400);  

bob = new Planet(30, 12, 200);
voti= new Planet(100, 200, 20);

bobs= new ArrayList<Planet>();

bobs.add(bob);
bobs.add(voti);
}

void draw(){
  
circle(bob.getPos().x,bob.getPos().y, 10);
//bob.update(1);

for (int i = 0; i < bobs.size(); i++) {
println(bobs.get(i));
bobs.get(i).update(1);

}

}
