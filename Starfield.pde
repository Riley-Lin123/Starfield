Particle[] num = new Particle[60];
int total = 0;

// your code here
public void setup() {
  size(500,500);
  noCursor();
  for (int i = 0; i < num.length; i++){
    num[i] = new Particle();
  }
  num[0] = new OddballParticle(250,250); // 
}

public void draw() {
  background(0);
  fill(213, 75, 0);
  ellipse(250,250,100,100);
  noFill();
  fill(255,255,255);
  text("You were hit " + total + " times", 380,50);
  noFill();
  for (int i = 0; i < num.length; i++){
    num[i].show();
    num[i].move();
  }
  }

public class Particle {
  private int myColor;
  private double myX, myY, mySpeed, myAngle;
  private boolean hasHit;
  public Particle(){
    myX = myY = 250;
    myColor = color((int)(Math.random()*50)+200,(int)(Math.random()*150)+50,(int)(Math.random()*50));
    mySpeed = Math.random()*5+1;
    myAngle = Math.random()*(2*Math.PI);
    hasHit = false;
  }

  public void move(){
    myX = myX + (Math.cos(myAngle) * mySpeed);
    myY = myY + (Math.sin(myAngle) * mySpeed);
    if (myX > 510 || myY > 510 || myX < -10 || myY < -10){
      myX = 250;
      myY = 250;
      mySpeed = (Math.random()*5)+2;
      myAngle = Math.random()*(2*Math.PI);
      hasHit = false;
    }
    if (!hasHit && (int)num[0].getX() > (int)myX - 10 && 
      (int)num[0].getX() < (int)myX + 10 && 
      (int)num[0].getY() > (int)myY - 10 && 
      (int)num[0].getY() < (int)myY + 10){
        total++;
        fill(255,255,255);
        //text("You were hit " + total + " times", 380,50);
        hasHit = true;
    }
  }

  public void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 15,15);
  }
   public void setX(double x) { myX = x; }
  public void setY(double y) { myY = y; }
  public void setSpeed(double s) { mySpeed = s; }
  public void setAngle(double a) { myAngle = a; }
  public void setColor(int c) { myColor = c; }
  public double getX() { return myX; }
  public double getY() { return myY; }
  public double getSpeed() { return mySpeed; }
  public double getAngle() { return myAngle; }
  public int getColor() { return myColor; }
}

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
