//Movement Example Code

//variables for position

float xPos =0;
float yPos = 0;


//Booleans for movement
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

//image
PImage rock;
PImage Space;

 

void setup() {
  //window modifications
  size(1200, 700);
  Space = loadImage("Space.png");
  image(Space,width,height);
  
  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  //noStroke();
  //fill(0, 0, 255);

  imageMode(CENTER);
  rock = loadImage("fire rock.png");
}
void draw() {
  //wipe

  //update position
  if (left) {
    xPos = xPos -3;
  }
  if (right) {
    xPos = xPos +3;
  }
  if (up) {
    yPos = yPos -3;
  }
  if (down) {
    yPos = yPos +3;
  }

  //draw shape
  image(rock, xPos, yPos, 300,300);
}



void keyPressed() {

  if (key == 'w') {
    up = true;
  }
  if (key == 'a')
    left = true;
  {
  }
  if (key == 's') {
    down = true;
  }  
  if (key == 'd')
    right = true;
  {
  }
}

void keyReleased() {

  if (key == 'w') {
    up = false;
  }
  if (key == 'a') {
    left = false;
  }
  if (key == 's') {
    down = false;
  }
  if (key == 'd') {
    right = false;
  }
}