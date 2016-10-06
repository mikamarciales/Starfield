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
	for(int i = 0; i < starfield.length/10; i++)
	{
		starfield[i] = new OddballParticle();		
	}
		starfield[1] = new JumboParticle();
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
		dColor = color((int)(Math.random()*156)+100, (int)(Math.random()*156)+100, (int)(Math.random()*156)+100);
		dSize = (int)(Math.random()*7);

	}
	void move()
	{
		dX = dX + (Math.cos(dTheta)*dSpeed);
		dY = dY + (Math.sin(dTheta)*dSpeed);
	}
	void show()
	{
		//stroke(dColor);
		//fill(0);
		noStroke();
		fill(dColor);
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
	int oColor, oSize;
	OddballParticle()
	{
		oX = 500;
		oY = 400;
		//oX = mouseX;
		//oY = mouseY;
		oSize = (int)(Math.random()*7);
		oTheta = (Math.random())*(2*Math.PI);
		//oSpeed = (Math.random())*10;
		oSpeed = 5;
		//oColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		oColor = color((int)(Math.random()*255));
	}
	public void show()
	{
		//stroke(oColor);
		//fill(255);
		noStroke();
		fill(oColor);
		ellipse((float)oX, (float)oY, oSize, oSize);
	}
	public void move()
	{
		oX = oX + (Math.cos(oTheta)*oSpeed);
		oY = oY + (Math.sin(oTheta)*oSpeed);
		if (oX > 1000)
		{
			oX -= 1000;
		}
		if (oX < 0)
		{
			oX += 1000;;
		}
		if (oY > 800)
		{
			oY -= 800;
		}
		if (oY < 0)
		{
			oY += 800;
		}
	}
}

class JumboParticle extends NormalParticle
{
	int jSize;
	JumboParticle()
	{
		jSize = (int)(Math.random()*30)+30;

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
	for(int i = 0; i < starfield.length/10; i++)
	{
		starfield[i] = new OddballParticle();		
	}
		starfield[1] = new JumboParticle();
}