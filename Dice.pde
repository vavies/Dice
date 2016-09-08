Die thefirst;
void setup()
{
	noLoop();
	size(600,600);

}
void draw()
{
	background(100,90,200);
	for(int repeatX = 100; repeatX<510; repeatX=repeatX+100){
		for(int repeatY = 100; repeatY<510; repeatY=repeatY+100){
			thefirst = new Die(repeatX,repeatY);
			thefirst.show();
			thefirst.roll();
		}
	}	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int pizzaX;
	int pizzaY;
	int numDots;
	Die(int x, int y) 
		{
			pizzaX = x;
			pizzaY = y;
			numDots = (int)(Math.random()*6+1);

		}
	void roll()
	{
		fill(250,50,50);
		if(numDots == 1){

			ellipse(pizzaX,pizzaY,30,30);
		}
		else if(numDots == 2 ){

			ellipse(pizzaX,pizzaY,30,30);
		}
		else if(numDots == 3){

			ellipse(pizzaX,pizzaY,30,30);
		}
		else if(numDots == 4){


			ellipse(pizzaX,pizzaY,30,30);
		}
		else if (numDots == 5){


			ellipse(pizzaX,pizzaY,30,30);
		}
		else {


			ellipse(pizzaX,pizzaY,30,30);
		}
	}

	void show()
	{
		//pizza with cheese
		fill(170,30,10);
		strokeWeight(6);
		stroke(200,160,30);
		ellipse(pizzaX,pizzaY,90,90);
		stroke(200,200,200);
		strokeWeight(13);
		line(pizzaX-26,pizzaY+25,pizzaX+18,pizzaY+30);
		line(pizzaX-30,pizzaY+18,pizzaX+28,pizzaY+15);
		line(pizzaX-33,pizzaY-2,pizzaX+30,pizzaY+3);
		line(pizzaX-32,pizzaY-16,pizzaX+28,pizzaY-21);
		line(pizzaX-23,pizzaY-29,pizzaX+16,pizzaY-30);
	}
}
