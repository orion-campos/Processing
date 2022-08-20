//Orion Campos
//April 26, 2015
//Based on Random Walk Traditional script by Daniel Shiffman, The Nature of Code

Walker w;

void setup() {
  size(800, 400);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
  w.mousePressed();
}

class Walker
{
  int x;
  int y;
  Walker()
  {
    x=width/2;
    y=height/2;
  }

  void mousePressed()
  {
    if (mousePressed == true) {
      x=mouseX;
      y=mouseY;
    } else {
      x=x;
      y=y;
    }
  }

  void display()
  {
    stroke(100, 50);
    strokeWeight(5);
    point(x, y);
  }

  void step()
  {
    int choice=int(random(4));
    if (choice==0) {
      x+=5;
    } else if (choice==1) {
      x-=5;
    } else if (choice==2) {
      y+=5;
    } else {
      y-=5;
    }
  }
}

