void setup() {
  size(600, 600);
  background(0);
  noLoop();
  strokeWeight(2);
  translate(width / 2, height / 2);
  heart(0, 0, 200, 5);
}

void heart(float x, float y, float size, int depth) {
  if(depth == 0){return;}
  beginShape();
  stroke(color(random(180, 255), random(50, 150), random(180, 255)));
  fill(color(random(200, 255), random(50, 150), random(180, 255)));
  for(float t = 0; t <= TWO_PI; t += 0.1){
    float heartX = 16 * sin(t) * sin(t) * sin(t);
    float heartY = 13 * cos(t) - 5 * cos(2 * t) - 2 * cos(3 * t) - cos(4 * t);
    vertex(x + heartX * size / 16, y - heartY * size / 16);
  }
  endShape();

  float newSize = size * 0.5;
  heart(x - size * (float)Math.random(), y * (float)Math.random(), newSize, depth - 1);
  heart(x + size * (float)Math.random(), y * (float)Math.random(), newSize, depth - 1);
  heart(x * (float)Math.random(), y - size * (float)Math.random(), newSize, depth - 1);
}
