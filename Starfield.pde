NormalParticle [] starfield;

void setup()
{
	size(1000, 800);
	background(0);
	starfield = new NormalParticle[100];
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
}

class NormalParticle
{
	NormalParticle()
	{
		double myX, myY, mySpeed, myAngle;
		int myColor;
	}
	void move()
	{

	}
	void show()
	{

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

