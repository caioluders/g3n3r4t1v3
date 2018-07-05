void setup() {
  size(500,500) ;
  noFill() ;
  stroke(255);
  background(0);
  frameRate(100);
  frameCount= 0 ;
}

void draw() {
  translate(width/2 , height/2) ;
  beginShape(POINTS);
  for ( int i = 0 ; i <= 360 ; i+=10 ) {
    float angle = abs(sin(radians(i*frameCount))*frameCount);
    float x = sin(radians(i-frameCount))*angle ;
    float y = cos(radians(i+frameCount))*angle;
    vertex(x,y);
  }
  endShape(CLOSE);
}

void keyPressed() {
    setup() ;
}
