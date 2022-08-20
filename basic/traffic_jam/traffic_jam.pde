//Orion Campos
//June 14, 2015
//Based on Random Walk Traditional script by Daniel Shiffman, The Nature of Code

ParticleSystem ps1;
ParticleSystem ps2;
Repeller repeller;

void setup() {
  size(640, 360);
  ps1 = new ParticleSystem(new PVector(0, height), new PVector(4, -2));
  ps2 = new ParticleSystem(new PVector(0,0), new PVector(4, 2));
  repeller = new Repeller(width/2, height/2);
}

void draw() {
  background(255);
  ps1.addParticle();
  ps2.addParticle();

  // Apply gravity force to all Particles
  PVector force1 = new PVector(2, 0);
  ps1.applyForce(force1);
  ps1.applyRepeller(repeller);

  PVector force2 = new PVector(0, 2);
  ps2.applyForce(force2);
  ps2.applyRepeller(repeller);


  repeller.display();
  ps1.run();
  ps2.run();
}

