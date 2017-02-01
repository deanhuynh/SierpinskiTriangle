public void setup()
{
	size(800, 800);
	background(200);
	noStroke();
	fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	sierpinski(50, 740, 700);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len<=50)
	{
		fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
		triangle(x, y, x+len/2, y-len, x+len, y);
	}

	else 
	{

		sierpinski(x, y, len/2);
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4),y-(len/2),len/2);
	}
}