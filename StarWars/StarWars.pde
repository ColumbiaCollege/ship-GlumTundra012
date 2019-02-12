//Movement Example Code

//variables for position

float xPos =0;
float yPos = 0;
float xSpeed =0;
float ySpeed =0;


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
  imageMode(CENTER);
  
  //draws an image 'Space' at 
  image(Space,width/2,height/2,width,height);
  
  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  //noStroke();
  //fill(0, 0, 255);

  
  rock = loadImage("fire rock.png");
}

void draw() {
  //wipe background
  image(Space,width/2,height/2,width,height);

  //update spped
  if (left) {
    //xPos = xPos -3;
    xSpeed = xSpeed -1;
  }
  if (right) {
    //xPos = xPos +3;
    xSpeed = xSpeed +1;
  }
  if (up) {
    yPos = yPos -3;
  }
  if (down) {
    yPos = yPos +3;
  }
  //update postition
  xPos = xPos + xSpeed;
  

  //draw shape
  image(rock, xPos, yPos, 300,300);
}



void keyPressed() {

  if (key == 'w' || keyCode == UP) {
    up = true;
  }
  if (key == 'a' || keyCode == LEFT){
    left = true;
  }
  if (key == 's' || keyCode == DOWN) {
    down = true;
  }  
  if (key == 'd' || keyCode == RIGHT){
    right = true;
  }
}

void keyReleased() {

  if (key == 'w' || keyCode == UP) {
    up = false;
  }
  if (key == 'a' || keyCode == LEFT){
    left = false;
  }
  if (key == 's' || keyCode == DOWN) {
    down = false;
  }  
  if (key == 'd' || keyCode == RIGHT){
    right = false;
  }
}
