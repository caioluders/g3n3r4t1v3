int[][] lines = new int[250][2] ;

void setup() {
	size(1000,1000);
	for (int i = 1; i < lines.length-1; ++i) {
		lines[i][0] = i*(width/lines.length) ;
		lines[i][1] = 0 ; 
	}
	background(0);
	noSmooth();
	stroke(255) ;
	frameRate(1600);
}

void draw() {
	for (int i = 1; i < lines.length-1; ++i) {
		if((frameCount%2)==0) {
			lines[i][0] += noise(lines[i-1][0])*2 ;
		} else {
			lines[i][0] -= noise(lines[i-1][0])*2 ;
		}
		
		lines[i][1] += 1 ;
		point(lines[i][0],lines[i][1]) ;	
	}
}
