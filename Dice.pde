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
		}
	}	
}
void mousePressed()
{
//	redraw();
}
class Die //models one single dice cube
{
	int pizzaX;
	int pizzaY;
	Die(int x, int y) 
		{
			pizzaX = x;
			pizzaY = y;
		}
	//void roll()

	void show()
	{
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

	}
}
