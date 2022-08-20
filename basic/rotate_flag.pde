
float r = 0.0;
void setup() {
  frameRate(24);
  size(300, 300);

  for (int r = 0; r<10; r++) {
    print(r);
    }
  }

  void draw() {
    fill(200, 200, 200, 50);
    rect(0, 0, width, height);
    translate(125, 125);
    rotate(r);
    r = r+0.02;
    translate(-125, -125);

    noStroke();
    fill(0, 255, 255);
    rect(50, 50, 200, 150);

    fill(255, 255, 0);
    rect(50, 100, 200, 50);
    rect(100, 50, 50, 150);

    //fill(0, 255, 255);
    //rect(100, 100, 50, 50);
  }

