int myX, myY, myR, myG, myB;
Bacteria [] MRSA;

 void setup()   
 {
 	size (600,600);
 	MRSA = new Bacteria[25];
 	for (int i = 0; i <MRSA.length; i++)
 	{
 		MRSA[i] = new Bacteria ((int)(Math.random()*600),(int)(Math.random()*600));
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background ((int)(Math.random()*30+5));
 	for (int i = 0; i < MRSA.length; i++)
 	{
 		MRSA[i].show();
 		MRSA[i].move();
 	}
 }  
 void mousePressed()
 {
 	redraw();
 	MRSA = new Bacteria[25];
 	for (int i = 0; i <MRSA.length; i++)
 	{
 		MRSA[i] = new Bacteria ((int)(Math.random()*600),(int)(Math.random()*600));
 	}
 }
 class Bacteria    
 {     
 	//lots of java!   
 	int myX,myY,myR,myG,myB;
 	Bacteria (int x, int y)
 	{
 		myX = x;
 		myY = y;
 		myR = (int)(Math.random()*255);
 		myG = (int)(Math.random()*255);
 		myB = (int)(Math.random()*255);
 	}
 	void move ()
 	{
 		myX = myX + (int)(Math.random()*4-2);
 		myY = myY + (int)(Math.random()*4-2);
 	}
 	void show ()
 	{
 		noStroke();
 		fill(myR,myG,myB);
 		ellipse(myX,myY,10,10);
 	}
 }    