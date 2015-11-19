PShader shader1;
PShape obj;
PImage img;
float ry;
boolean customShader;

public void setup(){
  
  size (600, 360, P3D);
  noStroke();
  img = loadImage("1.jpg");
  //obj = loadShape ("1.obj");
  shader1 = loadShader("Manzana.glsl");
  //shader1 = loadShader("CariF.glsl", "CariVer.glsl");
  //shader1 = loadShader("TexF.glsl", "TexV.glsl");
  shader1.set("resolution", float(width), float(height));  
  //shader(shader1);
    
}

public void draw () {
  
  shader1.set("time", millis() / 1000.0); 
  shader1.set("mouse", float(mouseX)/500, float(mouseY)/500);
  //shader1.set("mouse", float(mouseX), float(mouseY));
  //shader1.set("mouse", float(mouseY), float(mouseX));
  
  
  
  noStroke();
  //background (0);
  //directionalLight(200, 200, 200, 0, 0, -100);
  //lights(); 
  
 // directionalLight(204, 204, 204, -1, -1, -1);
  //translate(width/2, height/2 + 100, -200);
  
  //rotateZ(PI);
  //rotateX(0.5);
  //rotateY(15+ry); 
  //scale(200); 
  //shape(obj); 
  //ry += 0.02;
  
  shader(shader1); 
  rect(0, 0, width, height);
  
}  

