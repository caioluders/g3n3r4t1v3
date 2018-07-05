void setup () {
  size(500,500) ;
  frameRate(300) ;
  background(0);
  smooth();  
}

void draw() {
    background(0) ;
    for ( int i = 0 ; i < 360 ; i += 1)  {
    	for (int y = 0 ; y < 15 ; y += 1 ) {
    		if (y % 2 == 0 ) {
    			stroke(255-(frameCount%255),frameCount%255,frameCount%255);
		     	point(width/2+cos(radians(i-frameCount))*10*y,height/2+sin(radians(i))*10*y) ;
		     	point(width/2+cos(radians(i-frameCount))*pow(random(0,2),y),height/2+sin(radians(i))*10*y) ;
		    } else {
		    	stroke(frameCount%255,frameCount%255,255-(frameCount%255));
		    	point(width/2+cos(radians(i))*10*y,height/2+sin(radians(i-frameCount))*10*y) ;	
		    	point(width/2+cos(radians(i-frameCount))*10*y,height/2+sin(radians(i))*pow(random(0,2),y)) ;
		    }
	    }
    }
 
}
