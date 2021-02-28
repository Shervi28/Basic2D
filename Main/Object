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
    // You can choose how to update your object.
    // velocity.add(acceleration);
    // velocity.limit(topspeed);
    // position.add(velocity);
  }

  void display() {
    // You can choose how to display your object
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
