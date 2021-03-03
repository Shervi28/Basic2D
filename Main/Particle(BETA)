class Object {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float mass;
  float Mass;
  float VelX;
  float VelY;
  float AccX;
  float AccY;
  int X;

  Object() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(VelX, VelY);
    acceleration = new PVector(AccX,AccY);
    topspeed = X;
    mass = Mass;
    
  }
  
  void accessVelocity(float x, float y){
    x = VelX;
    y = VelY;
  }
  
  void accessAccelleration(float x, float y){
    x = AccX;
    y = AccY;
  }
  
  void accessTopspeed(int x){
    x = X;
  }
  
  void accessMass(float m){
    m = Mass;
  }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }  
  
  void update(){
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x, position.y, 48, 48);
  }

  void checkEdges() {

    if (position.x > width) {
      position.x = 0;
    }
    else if (position.x < 0) {
      position.x = width;
    }

    if (position.y > height) {
      position.y = 0;
    }
    else if (position.y < 0) {
      position.y = height;
    }
  }
  
  void checkEdges1() {

    if (position.x > width) {
      position.x = width;
      velocity.x *= -1;
    } else if (position.x < 0) {
      velocity.x *= -1;
      position.x = 0;
    }

    if (position.y > height) {
      velocity.y *= -1;
      position.y = height;
    }

  }  
  
}

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-1, 0));
    position = l.get();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 2.0;
  }

  void display() {
    stroke(0, lifespan);
    strokeWeight(2);
    fill(127, lifespan);
    ellipse(position.x, position.y, 12, 12);
  }
  
  void accessLifespan(float Lifespan){
    Lifespan = lifespan;
  }
  
  

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } 
    else {
      return false;
    }
  }
}

Particle p;

void setup() {
  size(640,360);
  p = new Particle(new PVector(width/2,20));
  background(255);
  smooth();
}

void draw() {
  background(255);
  
  p.run();
  if (p.isDead()) {
    p = new Particle(new PVector(width/2,20));
    //println("Particle dead!"); 
  }
}
