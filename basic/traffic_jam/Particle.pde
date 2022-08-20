//Orion Campos
//June 14, 2015
//Based on Random Walk Traditional script by Daniel Shiffman, The Nature of Code

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  float mass = 1; // Let's do something better here!

  Particle(PVector l, PVector d) {
    acceleration = new PVector(0,0);
    velocity = d.get();
    location = l.get();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  void applyForce(PVector force) {
    PVector f = force.get();
    f.div(mass);   
    //acceleration.add(f);
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    lifespan -= 1;
  }

  // Method to display
  void display() {
    noStroke();
    fill(100,lifespan);
    rect(location.x,location.y,12,12);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
