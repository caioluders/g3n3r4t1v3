void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
 
int n = 3;
int r = 1 ; 
 
void setup () {
  size(600,1000) ;
  background(79,91,102);
  smooth();  
}

void draw() {

  if ( frameCount % 30 == 0 ) {
    background(79,91,102) ;
    noFill() ;
    stroke(192,197,206);
    n += 1;
    r += int(random(1,10));
    strokeWeight(2);
    for ( int i = 0 ; i < width+30 ; i+=30)  {
      for ( int k = 0 ; k < height+30 ; k+=30) {
        polygon(i,k,r,n);
      }
    }
    if ( n >= 10 ) {
      n = 3 ;
    }
    if ( r >= 100 ) {
      r = 1; 
    }
  } 

}
