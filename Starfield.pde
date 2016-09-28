Particle[] starfield;

void setup()
{
	size(1000, 800);
	background(0);
	starfield = new Particle[100];
	for(int i = 0; i < starfield.length; i++)
	{
		starfield[i] = new NormalParticle();
		starfield[0] = new OddballParticle();
		starfield[1] = new JumboParticle();
	}
}

void draw()
{
	//background(0);
	fill(0, 0, 0, 25);
	noStroke();
	rect(-5, -5, 1005, 805);
	for(int i = 0; i < starfield.length; i++)
 	{
 		starfield[i].move();
 		starfield[i].show();
 	}
}

class NormalParticle implements Particle
{
	double dX, dY, dSpeed, dTheta;
	int dColor;
	NormalParticle()
	{
		dTheta = (Math.random())*(2*Math.PI);
		dSpeed = (Math.random())*10;
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
		noStroke();
		fill(dColor);
		ellipse((float)dX, (float)dY, 10, 10);
	}
}

interface Particle
{
	public void show();
	public void move();
}

class OddballParticle implements Particle
{
	public void show()
	{
		fill(255);
		ellipse(500, 400, 20, 20);
	}
	public void move()
	{

	}
}

class JumboParticle extends NormalParticle
{
	void show()
	{
		noStroke();
		fill(dColor);
		ellipse((float)dX, (float)dY, 50, 50);
	}
}

