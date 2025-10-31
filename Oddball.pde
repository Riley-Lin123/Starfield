public class OddballParticle extends Particle {
  private int myColor;
  private double myX, myY;
  public OddballParticle(int x, int y){
    myX = x;
    myY = y;
    myColor = color(0, 0, 255);
  }

  public void move(){
    myX = mouseX - 15;
    myY = mouseY - 15;
    
  }

  public void show(){
    fill(myColor);
    rect((float)myX, (float)myY, 30,30);
  }
  public double getX() {
    return myX;
  }
  public double getY(){
    return myY;
  }
}
