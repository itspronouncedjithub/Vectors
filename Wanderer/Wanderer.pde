//float x,y
PVector loc; //loc replaces x and y

//float velX,velY
PVector vel; //vel replaces velX and velY

PVector acc;

float diam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  loc = new PVector(width/2,height/2);
  vel = PVector.random2D(); //creating a random 2D vector
  vel.mult(5);
  acc = new PVector();
  acc.mult(.8);
  vel.limit(8);
  
  diam = 80;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  //add acc to vel
  vel.add(acc);

  //add velocity to position
  loc.add(vel);

  //wrap the ball's position
  if (loc.x >= width) {
    loc.x = 0;     
  } else if (loc.x <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y <= 0) {
    loc.y = height;
  }
}  