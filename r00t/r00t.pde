int[][] lines = new int[250][2] ;

void setup(){
	fullScreen() ;
	lines[0][0] = 1 ;
	lines[0][1] = 1 ;
	for (int i = 1; i < lines.length; i++) {
		lines[i][0] = int(map(noise(i/10),0,1,1,10)) ;
		lines[i][1] = lines[i-1][1]+(height*2/lines.length) ;
	}
	background(0) ;
	noSmooth();
	// blendMode(DIFFERENCE);
	stroke(255) ;
	frameRate(300) ;
}

void draw() {
	for (int i = 1 ; i < lines.length ; i++) {
		int x = lines[i][0] + int(map(noise(lines[i-1][0]),0,1,4,8)) ;

		line(lines[i-1][0],lines[i-1][1],x,lines[i][1]) ;

		lines[i][0] = x ;
	}

	if ( frameCount % 500 == 0 ) {
		save("r00t.jpg") ;
	}

}