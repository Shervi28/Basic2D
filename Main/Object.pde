class Object {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;
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
}
