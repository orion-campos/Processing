//(a couple of) particle(s) [add particles, add limits, add acc., add forces, add mass, ... ] 
float pX_1 = random(100, 200);
float pY_1 = random(100, 200);
float pX_2 = random(100, 200);
float pY_2 = random(100, 200);

float vX_1 = random(-1, 1);
float vY_1 = random(-1, 1);
float vX_2 = random(-1, 1);
float vY_2 = random(-1, 1);

void setup() {
  frameRate(30);
  smooth();
  size(500,500);
}

void draw() {
  background(255);

  pX_1 += vX_1;
  pY_1 += vY_1;
  pX_2 += vX_2;
  pY_2 += vY_1;
  
  ellipse(pX_1, pY_1, 5,5);
  ellipse(pX_2, pY_2, 10,10);
}
