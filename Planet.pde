public class Planet{

  PVector pos;
  PVector vel;
  PVector acc;
  
  int mass;
  
  public Planet(int x, int y, int massIN){
  pos = new PVector(x,y);
  mass = massIN;
    
  }
  
  
  public PVector getPos(){
  return pos;
  }
  
  public int getMass(){
  return mass;
  }
  
}
