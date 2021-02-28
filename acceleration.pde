class Object {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Object() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0.01,-0.001);
    topspeed = 10;
  }

  void update() {
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

Object car;

void setup() {
  size(400,400);
  car = new Object();
}

void draw() {
  background(255);

  if(keyPressed){
    if(key=='a'){
        car.update();
        car.checkEdges();
        car.display();
    }
  }
}
