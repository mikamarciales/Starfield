NormalParticle [] starfield;

void setup()
{
	size(1000, 800);
	background(0);
	starfield = new NormalParticle[20];
	for(int i = 0; i < starfield.length, i++)
	{
		starfield[i] = new NormalParticle();
	}
}

void draw()
{
	fill(0, 0, 0, 25);
	noStroke();
	rect(-5, -5, 1005, 805);
	for(int i = 0; i < starfield.length; i++)
 	{
 		starfield[i].move();
 		starfield[i].show();
 	}
}

class NormalParticle
{
	double dX, dY, dSpeed, dTheta;
	int dColor;
	NormalParticle()
	{
		dTheta = Math.random()*(2*Math.PI);
		dSpeed = Math.random()*10;
		dX = 500;
		dY = 400;
		dColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

	}
	void move()
	{
		dX = dX + Math.cos(dTheta)*dSpeed;
		dY = dY + Math.sin(dTheta)*dSpeed;
	}
	void show()
	{
		fill(dColor);
		ellipse(dX, dY, 10, 10);
	}
}

interface Particle
{
	//your code here
}

class OddballParticle //uses an interface
{
	//your code here
}

class JumboParticle //uses inheritance
{
	//your code here
}

