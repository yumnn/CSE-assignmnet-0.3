/**
 * Bouncing Ball with Vectors 
 * 
 * Demonstration of using vectors to control motion 
 * of a body.
 */
 
PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

//mycoding
//mycoding
//mycoding
PVector location2;  // Location of shape
PVector velocity2;  // Velocity of shape
PVector gravity2;   // Gravity acts at the shape's acceleration
//mycoding
//mycoding
//mycoding

void setup() {
  size(640,360);
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);
 
  //mycoding
  //mycoding
  //mycoding
  size(1000,700);
  location2 = new PVector(700,300);
  velocity2 = new PVector(1.6,3.1);
  gravity2 = new PVector(0,1.1);
   //mycoding
   //mycoding
   //mycoding
}

void draw() {
  background(0);
  
  // Add velocity to the location.
  location.add(velocity);
  
  // Add gravity to velocity
  velocity.add(gravity);
  
  // Bounce off edges
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  
  if (location.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  
  // Display circle at location vector
  stroke(255);
  strokeWeight(2);
  fill(127);
  ellipse(location.x,location.y,48,48);
 
 //mycoding
  //mycoding
   //mycoding
 location2.add(velocity2);
 velocity2.add(gravity2);
 
 if ((location2.x > width) || (location2.x < 0)) {
    velocity2.x = velocity2.x * -1;
  }
 if (location2.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity2.y = velocity2.y * -0.95; 
    location2.y = height;
  }
  
  stroke(255);
  strokeWeight(2);
  fill(127);
  ellipse(location2.x,location2.y,60,60);
 //mycoding
  //mycoding
   //mycoding
   
}
