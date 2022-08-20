//Orion
//Iaac 2015 interaction
//20/01/2015

float x =100;
float y =500;
String myName = "ball"; //collection of charts
float size = 50;

void setup(){
  size(900, 700);
}

void draw(){
  background(255,155,0); //r, g, b
  
  fill(0,255,255);
  stroke(255,255,0);
  ellipse(x,y,size,size);
  
  noStroke();
  fill(0,255,0);
  ellipse(width/2, height/2, size, size);
  
  fill(255,255,0);
  rect(width/2, height/2+10, size, size);
  
  if(x > width-size/2) {
    x = width-size/2+1;
    
  }
  else {
    x++;
  }
  
}
