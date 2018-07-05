ArrayList <PVector> points = new ArrayList <PVector> ();

void setup() {
    size(500,500) ;

    for ( int i = 0 ; i < 9999 ; i++ ) {
        points.add( new PVector(250,250) ) ; ;
    } 
}

void draw() {
    background(0) ;
    stroke(255) ;
    for ( PVector p : points ) {
        point(p.x, p.y);
    }

    explode() ;

}

void explode( ) {
    for (PVector p : points ) {
        p.x += random(-5,5) ;
        p.y += random(-5,5) ;
    }
}
