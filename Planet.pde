public class Planet{

  PVector pos;
  PVector vel;
  PVector acc;
  
  int mass;
  
  public Planet(int x, int y, int massIN){
  pos = new PVector(x,y);
  mass = massIN;
  vel = new PVector(1,0);
  acc = new PVector(0,0.1);
    
  }
  
  
  public PVector getPos(){
  return pos;
  }
  
  public int getMass(){
  return mass;
  }
  
  public void setAcc(PVector accIN){
  acc.set(accIN);
  }
  
  public void update(float timestep){
  pos.add(vel.copy().mult(timestep));
  vel.add(acc.copy().mult(timestep));
  
  }
  
  
  
}
