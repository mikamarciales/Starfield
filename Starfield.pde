Particle[] starfield;

void setup()
{
	size(1000, 800);
	background(0);
	starfield = new Particle[500];
	for(int i = 0; i < starfield.length; i++)
	{
		starfield[i] = new NormalParticle();
	}
		starfield[0] = new OddballParticle();
		starfield[1] = new JumboParticle();
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
	int dColor, dSize;
	NormalParticle()
	{
		dTheta = (Math.random())*(2*Math.PI);
		dSpeed = (Math.random())*10;
		dX = mouseX;
		dY = mouseY;
		dColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		dSize = (int)(Math.random()*7);

	}
	void move()
	{
		dX = dX + (Math.cos(dTheta)*dSpeed);
		dY = dY + (Math.sin(dTheta)*dSpeed);
		//if (dX > 1000)
		//{
		//	dX -= 1000;
		//}
		//if (dX < 0)
		//{
		//	dX += 1000;;
		//}
		//if (dY > 800)
		//{
		//	dY -= 1000;
		//}
		//if (dY < 0)
		//{
		//	dY += 1000;
		//}
	}
	void show()
	{
		//noStroke();
		//fill(dColor);
		stroke(dColor);
		fill(0);
		ellipse((float)dX, (float)dY, dSize, dSize);
	}
}

interface Particle
{
	public void show();
	public void move();
}

class OddballParticle implements Particle
{
	double oX, oY, oTheta, oSpeed;
	OddballParticle()
	{
		oX = mouseX;
		oY = mouseY;
		oTheta = (Math.random())*(2*Math.PI);
		oSpeed = (Math.random())*10;
	}
	public void show()
	{
		fill(255);
		ellipse((float)oX, (float)oY, 20, 20);
	}
	public void move()
	{
		//oX = mouseX + (Math.cos(oTheta)*oSpeed);
		//oY = mouseY + (Math.sin(oTheta)*oSpeed);
	}
}

class JumboParticle extends NormalParticle
{
	int jSize;
	JumboParticle()
	{
		jSize = (int)(Math.random()*20)+20;

	}
	void show()
	{
		stroke(dColor);
		fill(0);
		ellipse((float)dX, (float)dY, jSize, jSize);
	}
}

void mousePressed()
{
	for(int i = 0; i < starfield.length; i++)
	{
		starfield[i] = new NormalParticle();
	}
		starfield[0] = new OddballParticle();
		starfield[1] = new JumboParticle();
}

