void setup() {
  size(600, 600);
  background(0);
  frameRate(3);
}
void draw() {
  boolean shift = true;
  for (int y = -60; y < 600; y+=30)
  {
    for (int x = -50; x < 600; x+=25)
    {
      if (shift == true)
        scal(x+12, y);
      else
        scal(x, y);
    }
    if (shift == true)
      shift = false;
    else 
    shift = true;
  }
}
void scal(int x, int y) {
  //papercranes
  int re = 12 + (int)(Math.random()*225);
  int g = 12 + (int)(Math.random()*225);
  int b = 12 + (int)(Math.random()*225);
  int diam = 0;
  float r = 0;
  fill(0, r, 0);
  while (diam < 30) {
    stroke(re-30, g-30, b-30);
    diam++;
    r+=255/30.0;
    fill(255);
    beginShape();
    vertex(x+20+diam, y+20+diam);
    vertex(x+30+b, y+0+b);
    vertex(x+40, y+20);
    vertex(x+30, y+70);
    endShape(CLOSE);
  }
}
