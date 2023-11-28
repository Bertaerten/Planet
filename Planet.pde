public class Planet{

  PVector pos;
  PVector vel;
  PVector acc;
  
  int mass;
  
  public Planet(int x, int y, int massIN){
  pos = new PVector(x,y);
  mass = massIN;
  vel = new PVector(random(-1,1),random(-1,1));
  //vel = new PVector(0,0);

  acc = new PVector(0,0);
    
  }
  
  
  public PVector getPos(){
  return pos;
  }
  
  public int getMass(){
  return mass;
  }
  
  public int getSize(){
  return (mass/10);
  }
  
  public void setAcc(PVector accIN){
  acc.add(accIN);
  }
  
  public void update(float timestep){
  pos.add(vel.copy().mult(timestep));
  vel.add(acc.copy().mult(timestep));
  
  acc.setMag(0);
  
  }
  
  
  
}
