PImage icee ;
int i; 
float a = 0.0;
float s = 0.0; 
int x = 300; 
PImage cream;
float offset = 0;
float easing = 100;
float y= 100; 




void setup() {
  size(displayWidth, displayHeight);
  noStroke(); 

  icee = loadImage("icee.png");
  background(255, 232, 155);
  imageMode(CENTER); 


  noStroke();
  rectMode(CENTER); 
  frameRate(30);

  cream = loadImage("cream.jpg");

  stroke(255, 23, 23);
  noLoop(); 

  y = height * 0.5;
}

void draw() { 

  fill(255, 204);
  image(icee, mouseX, height/2, mouseY/2+10, mouseY/2+10);
  fill(255, 204);
  int inverseX = width-mouseX;
  int inverseY = height-mouseY;
  image(icee, inverseX, height/2, (inverseY/2)+10, (inverseY/2)+10);

  a = a+ 0.04; 
  s = cos(a)*2;

  translate(width/2, height/2);
  scale(s);
  fill(255, 238, 49);
  triangle(18, 18, 18, 360, 81, 360);

  translate(10, 0);
  scale(s);
  fill(234, 69, 14);
  triangle(18, 18, 18, 360, 81, 360);

  fill(255, 76, 44);
  strokeWeight(10);
  stroke(255, 196, 44);
  triangle(x, 50, 1100, 20, 800, 400);
  println(frameRate);

  image(cream, 0, 0); 
  float dx = (mouseX-cream.width/2) - offset;
  offset += dx * easing;
  tint(255, 127); 
  image(cream, offset, 0);

  line (0, y, width, y); 
  y=y - 1;
  if (y < 0) { 
    y = height;
  }
  
  
  if (mouseX > width/2) {
    strokeWeight(20);
    stroke(255,237 , 95); 
    fill(245, 76, 30);
  } else {
    fill(255, 64, 125);
    stroke(255, 160, 64);
    strokeWeight(20);
  }
}

void mousePressed() {
  loop();
} 
