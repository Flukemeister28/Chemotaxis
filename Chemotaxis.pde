int myX, myY, myR, myG, myB;
Bacteria [] MRSA;
Prey Antelope;

 void setup()   
 {
 	size (600,600);
 	MRSA = new Bacteria[10];
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
 	MRSA = new Bacteria[10];
 	for (int i = 0; i <MRSA.length; i++)
 	{
 		MRSA[i] = new Bacteria ((int)(Math.random()*600),(int)(Math.random()*600));
 	}
 	Antelope = new Prey((int)(Math.random()*600),(int)(Math.random()*600));
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
 		if (myX < Antelope.myPX)
 			{
 				myX = myX + (int)(Math.random()*4-1);
 			}
 		else if (myX > Antelope.myPX)
 			{
 				myX = myX + (int)(Math.random()*4-3);
 			}
 		if (myY < Antelope.myPY)
 			{
 				myY = myY + (int)(Math.random()*4-1);
 			}
 		else if (myY > Antelope.myPY)
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
 	int myPX,myPY,myR,myG,myB;
 	Prey (int x, int y)
 	{
 		myPX = x;
 		myPY = y;
 		myR = (int)(Math.random()*255);
 		myG = (int)(Math.random()*255);
 		myB = (int)(Math.random()*255);

 	}
 	void move ()
 	{
 		if ((Math.abs(myPX - MRSA[1].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[1].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[0].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[0].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[2].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[2].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[3].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[3].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[3].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[3].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[4].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[4].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[5].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[5].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[6].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[6].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[7].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[7].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[8].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[8].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		if ((Math.abs(myPX - MRSA[9].myX) )< 10)
 		{
 			myPX = myPX + (int)(Math.random()*100-50);
 		}
		else if ((Math.abs(myPY - MRSA[9].myY) )< 10)
 		{
 			myPY = myPY + (int)(Math.random()*100-50);
 		}
 		else if (myPY >= 600)
 		{
 			myPY = 10;
 		}
 		else if (myPX >= 600)
 		{
 			myPX = 10;
 		}
 		else if (myPY <= 0) 
 		{
 			myPY = 590;
 		}
 		else if (myPX <= 0)
 		{
 			myPX = 590;
 		}
 	}
 	void show ()
 	{
 		noStroke();
 		fill (myR,myG,myB);
 		rect (myPX,myPY,15,15);
 	}
  }