float r1 = 0.0;
float r2 = 0.0;

void setup() {
  //frameRate(24); 
  size(600, 300);
}

void draw() {
  // background
  rectMode(CORNER);
  fill(200, 200, 200, 30);
  rect(0, 0, 600, 300);
  
  
  r1 = r1-0.03;
  flower(150, 150, r1);
  
  r2 = r2+0.02;
  flower(400, 150, r2);
}

void flower( int posX, int posY, float rot) {
  translate(posX, posY);
  rotate(rot);
  
    rectMode(CENTER);
    // bigger
    noStroke();
    fill(0, 0, 0);
    rect(0, 0, 150, 150);
  
    // cross
    fill(255, 255, 255);
    rect(0, 0, 150, 50);
    rect(0, 0, 50, 150);
  
    //center
    fill(0, 0, 0);
    rect(0, 0, 50, 50);

  rotate(-rot);
  translate(-posX, -posY);
}

