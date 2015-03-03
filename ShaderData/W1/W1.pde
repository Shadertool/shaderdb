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



// Earth model with bump mapping, specular texture and dynamic cloud layer.
// Adpated from the THREE.js tutorial:
// http://learningthreejs.com/blog/2013/09/16/how-to-make-the-earth-in-webgl/

PShape earth;
PShape clouds;
PImage earthTex;
PImage cloudTex;
PImage alphaTex;
PImage bumpMap;
PImage specMap;
PShader earthShader;
PShader cloudShader;

float earthRotation;
float cloudsRotation;

void setup() {  
  size(600, 600, P3D);

  earthTex = loadImage("earthmap1k.jpg");
  cloudTex = loadImage("earthcloudmap.jpg");
  alphaTex = loadImage("earthcloudmaptrans.jpg");
  
  bumpMap = loadImage("earthbump1k.jpg");
  specMap = loadImage("earthspec1k.jpg");

  earthShader = loadShader("EarthFrag.glsl", "EarthVert.glsl");
  earthShader.set("texMap", earthTex);
  earthShader.set("bumpMap", bumpMap);
  earthShader.set("specularMap", specMap);
  earthShader.set("bumpScale", 0.05);
  
  cloudShader = loadShader("CloudFrag.glsl", "CloudVert.glsl");
  cloudShader.set("texMap", cloudTex);
  cloudShader.set("alphaMap", alphaTex);
  
  earth = createShape(SPHERE, 200, 32, 32);
  earth.setStroke(false);
  earth.setSpecular(color(125));
  earth.setShininess(10);
  
  clouds = createShape(SPHERE, 201, 32, 32);
  clouds.setStroke(false);  
}

void draw() {
  background(0);
  
  translate(width/2, height/2);
  
  pointLight(255, 255, 255, 300, 0, 500);  
  
  float targetAngle = map(mouseX, 0, width, 0, TWO_PI);  
  earthRotation += 0.05 * (targetAngle - earthRotation);
  
  shader(earthShader);
  pushMatrix();
  rotateY(earthRotation);
  shape(earth);
  popMatrix();
  
  shader(cloudShader);
  pushMatrix();
  rotateY(earthRotation + cloudsRotation);
  shape(clouds);
  popMatrix();
  
  cloudsRotation += 0.001;
}

/**
 * Fish Eye
 * 
 * This fish-eye shader is useful for dome projection.
 */

PShader fisheye;
PGraphics canvas;
PImage img;

boolean useFishEye = true;

void setup() {
  size(640, 640, P3D);  
  canvas = createGraphics(width, height, P3D);

  fisheye = loadShader("fragment.glsl");
  fisheye.set("aperture", 180.0);  
}

void draw() {
  canvas.beginDraw();
  canvas.background(0);
  canvas.stroke(255, 0, 0);
  for (int i = 0; i < width; i += 10) {
    canvas.line(i, 0, i, height);
  }
  for (int i = 0; i < height; i += 10) {
    canvas.line(0, i, width, i);
  }
  canvas.lights();
  canvas.noStroke();
  canvas.translate(mouseX, mouseY, 100);
  canvas.rotateX(frameCount * 0.01);
  canvas.rotateY(frameCount * 0.01);  
  canvas.box(100);  
  canvas.endDraw(); 
  
   if (useFishEye == true) {
    shader(fisheye);
  } 
  image(canvas, 0, 0, width, height);
}

void mousePressed() {
  if (useFishEye) {
    useFishEye = false;
    resetShader();    
  } else {
    useFishEye = true;
  }
}

