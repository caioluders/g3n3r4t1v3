void setup() {
    size(500,500) ;
    frameRate(300);
    background(0) ;
    stroke(255) ;
}

void draw() {
    translate(width/2, height/2);
    beginShape(POINTS);

    vertex( cos(radians(frameCount))*frameCount/64, sin(radians(frameCount))*frameCount/64 );

    endShape(CLOSE);
}
