int q = 100 ;
int c = 255 ;

void setup() {
    size(500, 500);
    background(0);
    frameRate(300);
    stroke(c);
}

void draw() {
    beginShape(POINTS);
    
    if ( frameCount%width == 0) {
        if ( c < 0 ) c = 255 ;
        if ( q < 0 ) q = 100 ;
        c-= 10 ;
        stroke(c); 
        q-- ;
    }

    for ( int x = 0 ; x < height ; x+=q ) {
        vertex(x,frameCount%height);
        vertex(frameCount%width,x);
    }
    for ( int x = width ; x >= 0 ; x-=q ) {
        vertex(x,frameCount%height);
        vertex(frameCount%width,x);
    }
    endShape(CLOSE);
}
