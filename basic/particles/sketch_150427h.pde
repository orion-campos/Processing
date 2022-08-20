//(a couple of) particle(s) [add particles, add limits, add acc., add forces, add mass, ... ] 
float[] posX= new float[100];
float[] posY= new float[100];

float[] velX= new float[100];
float[] velY= new float[100];

float[] accX= new float[100];
float[] accY= new float[100];



void setup() {
  frameRate(30);
  smooth();
  size(1000, 500);

  for (int i=0; i<100; i++) {
    posX[i]=random(0, width);
    posY[i]=random(0, height);
    velX[i]=random(-1, 1);
    velY[i]=random(-1, 1);
    accX[i]=random(-0.1, 0.1);
    accY[i]=random(-0.1, 0.1);
  }
}

void draw() {
  background(255);

  for (int i=0; i<100; i++) {

    velX[i]+=accX[i];
    velY[i]+=accY[i];

    posX[i]+=velX[i];
    posY[i]+=velY[i];

    if (posX[i]<0 || posX[i] > width) {
      velX[i]=-velX[i];
    }
    if (posY[i]<0 || posY[i] > height) {
      velY[i]=-velY[i];
    }

    for (int j=0; j<100; j++) {
      float di=dist(posX[i], posY[i], posX[j], posY[j]);
      if (di<50) {
        stroke(50, 50, 50, 10);       
        line(posX[i], posY[i], posX[j], posY[j]);
        noStroke();
        fill(50, 10);
        ellipse(posX[i], posY[i], di/2, di/2);
      }
    }
  }
}

