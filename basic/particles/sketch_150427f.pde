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
  size(500, 500);

  for (int i=0; i<100; i++) {
    posX[i]=random(0,width);
    posY[i]=random(0,height);
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
    
    if(posX[i]<200)
    fill(255,0,0);
    else
    fill(0,255,0);
       
    
    ellipse(posX[i], posY[i], 5, 5);
}

}