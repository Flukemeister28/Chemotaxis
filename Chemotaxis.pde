int myX, myY, myR, myG, myB;
Bacteria [] MRSA;
Prey Antelope;

 void setup()   
 {
 	size (600,600);
 	MRSA = new Bacteria[25];
 	for (int i = 0; i <MRSA.length; i++)
 	{
 		MRSA[i] = new Bacteria ((int)(Math.random()*600),(int)(Math.random()*600));
 	}
 	Antelope = new Prey((int)(Math.random()*600),(int)(Math.random()*600));
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background (0);
 	for (int i = 0; i < MRSA.length; i++)
 	{
 		MRSA[i].show();
 		MRSA[i].move();
 	}
 	Antelope.show();
 	Antelope.move();
 }  
 void mousePressed()
 {
 	redraw();
 	MRSA = new Bacteria[10000];
 	for (int i = 0; i <MRSA.length; i++)
 	{
 		MRSA[i] = new Bacteria ((int)(Math.random()*600),(int)(Math.random()*600));
 	}
 }
 class Bacteria    
 {       
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
 		if (myX < Antelope.myX)
 			{
 				myX = myX + (int)(Math.random()*4-1);
 			}
 		else if (myX > Antelope.myX)
 			{
 				myX = myX + (int)(Math.random()*4-3);
 			}
 		if (myY < Antelope.myY)
 			{
 				myY = myY + (int)(Math.random()*4-1);
 			}
 		else if (myY > Antelope.myY)
 			{
 				myY = myY + (int)(Math.random()*4-3);
 			}
 	}
 	void show ()
 	{
 		noStroke();
 		fill(myR,myG,myB);
 		ellipse(myX,myY,10,10);
 	}
 }    
 class Prey
 {
 	int myX,myY,myR,myG,myB;
 	Prey (int x, int y)
 	{
 		myX = x;
 		myY = y;
 		myR = (int)(Math.random()*255);
 		myG = (int)(Math.random()*255);
 		myB = (int)(Math.random()*255);

 	}
 	void move ()
 	{
 		myX = myX + (int)(Math.random()*6-3);
		myY = myY +(int)(Math.random()*6-3);
 	}
 	void show ()
 	{
 		noStroke();
 		fill (myR,myG,myB);
 		rect (myX,myY,15,15);
 	}
  }