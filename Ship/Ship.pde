//Movement Example Code

//variables for position
float xPos =0;
float yPos = 0;

//Booleans for movement
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

void setup() {
//window modifications
  size(1000, 800);
  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  noStroke();
  fill(#717070);
}

void draw() {
  //wipe
  background(#030303);
  //update position
  if (left) {
    xPos = xPos - 1;
  }
  if (right) {
    xPos = xPos + 1;
  }
  if (up) {
    yPos = yPos - 1;
  }
  if (down) {
    yPos = yPos + 1;
  }

  //draw gun thingy
  rect(xPos, yPos, 150, 50);
  rect(xPos, yPos, 50, 100);
}

void keyPressed() {
  if (key == 'a') {
    left = true;
  }
  if (key == 'd') {
    right = true;
  }
  if (key == 'w') {
    up = true;
  }
  if (key == 's') {
    down = true;
  }
}
void keyReleased() {
  if (key == 'a') {
    left = false;
  }
  if (key == 'd') {
    right = false;
  }
  if (key == 'w') {
    up = false;
  }
  if (key == 's') {
    down = false;
  }
}
