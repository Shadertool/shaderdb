PShape createOctahedron() {
  PShape sh = createShape();
  sh.beginShape(TRIANGLES);
  sh.noStroke();
  sh.vertex( 0.0f,  0.0f, +1.0f);
  sh.vertex(+1.0f,  0.0f,  0.0f); 
  sh.vertex( 0.0f, +1.0f,  0.0f);
  sh.vertex(+1.0f,  0.0f,  0.0f);
  sh.vertex( 0.0f,  0.0f, -1.0f); 
  sh.vertex( 0.0f, +1.0f,  0.0f);
  sh.vertex( 0.0f,  0.0f, -1.0f); 
  sh.vertex(-1.0f,  0.0f,  0.0f);
  sh.vertex( 0.0f, +1.0f,  0.0f);
  sh.vertex(-1.0f,  0.0f,  0.0f);
  sh.vertex( 0.0f,  0.0f, +1.0f);
  sh.vertex( 0.0f, +1.0f,  0.0f);
  sh.vertex( 0.0f,  0.0f, +1.0f);
  sh.vertex(+1.0f,  0.0f,  0.0f);
  sh.vertex( 0.0f, -1.0f,  0.0f);
  sh.vertex(+1.0f,  0.0f,  0.0f);
  sh.vertex( 0.0f,  0.0f, -1.0f);
  sh.vertex( 0.0f, -1.0f,  0.0f);
  sh.vertex( 0.0f,  0.0f, -1.0f);
  sh.vertex(-1.0f,  0.0f,  0.0f);
  sh.vertex( 0.0f, -1.0f,  0.0f);
  sh.vertex(-1.0f,  0.0f,  0.0f);
  sh.vertex( 0.0f,  0.0f, +1.0f);
  sh.vertex( 0.0f, -1.0f,  0.0f);    
  sh.endShape();
  return sh;
}
