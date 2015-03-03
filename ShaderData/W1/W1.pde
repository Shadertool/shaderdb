 * Press the mouse to switch between the custom and default shader.
 */

PShader blur;

void setup() {
  size(640, 360, P2D);
  blur = loadShader("fragment.glsl"); 
  stroke(255, 0, 0);
  rectMode(CENTER);
}

void draw() {
  filter(blur);  
  rect(mouseX, mouseY, 150, 150); 
  ellipse(mouseX, mouseY, 100, 100);
}


PShader monjori;

void setup() {
  size(640, 360, P2D);
  noStroke();
 
  monjori = loadShader("fragment.glsl");
  monjori.set("resolution", float(width), float(height));   
}

void draw() {
  monjori.set("time", millis() / 1000.0);
  
  shader(monjori);
  // This kind of effects are entirely implemented in the
  // fragment shader, they only need a quad covering the  
  // entire view area so every pixel is pushed through the 
  // shader.   
  rect(0, 0, width, height);  
}

PShader neg;
PImage img;
void setup() {
  size(800, 600, P2D);
  img = loadImage("img.jpg");
  neg = loadShader("fragment.glsl");
  
}


void draw() {

  shader(neg);
  
  image(img, 0, 0);
}

 * Press the mouse to switch between the custom and default shader.
 */

PShader blur;

void setup() {
  size(640, 360, P2D);
  blur = loadShader("fragment.glsl"); 
  stroke(255, 0, 0);
  rectMode(CENTER);
}

void draw() {
  filter(blur);  
  rect(mouseX, mouseY, 150, 150); 
  ellipse(mouseX, mouseY, 100, 100);
}


PShader monjori;

void setup() {
  size(640, 360, P2D);
  noStroke();
 
  monjori = loadShader("fragment.glsl");
  monjori.set("resolution", float(width), float(height));   
}

void draw() {
  monjori.set("time", millis() / 1000.0);
  
  shader(monjori);
  // This kind of effects are entirely implemented in the
  // fragment shader, they only need a quad covering the  
  // entire view area so every pixel is pushed through the 
  // shader.   
  rect(0, 0, width, height);  
}

PShader neg;
PImage img;
void setup() {
  size(800, 600, P2D);
  img = loadImage("img.jpg");
  neg = loadShader("fragment.glsl");
  
}


void draw() {

  shader(neg);
  
  image(img, 0, 0);
}


