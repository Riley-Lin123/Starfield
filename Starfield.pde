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

