//Orion Campos
//June 14, 2015
//Based on Random Walk Traditional script by Daniel Shiffman, The Nature of Code

class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;
  PVector dir;

  ParticleSystem(PVector location, PVector d) {
    origin = location.get();
    dir = d.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    PVector randompos = new PVector(origin.x, origin.y + random(-50,50));
    particles.add(new Particle(randompos, dir));
  }

  // A function to apply a force to all Particles
  void applyForce(PVector f) {
    for (Particle p: particles) {
      p.applyForce(f);
    }
  }

  void applyRepeller(Repeller r) {
    for (Particle p: particles) {
      PVector force = r.repel(p);        
      p.applyForce(force);
    }
  }


  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
