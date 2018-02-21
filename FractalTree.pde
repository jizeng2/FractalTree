private double fractionLength = 2.5; 
private int smallestBranch = 10; 
private double branchAngle = .3;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(255,255,255);   
	line(320,480,320,380);   
	drawBranches(320,380,175,3*PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	stroke((int)(Math.random()*255),255,255);
  double angle1, angle2;
  int endX1, endY1, endX2, endY2, endX3, endY3;

  angle1 = angle + branchAngle;
  angle2 = angle - branchAngle;
  
  endX1 = (int)(branchLength*Math.cos(angle1)+x);
  endY1 = (int)(branchLength*Math.sin(angle1)+y);
  endX2 = (int)(branchLength*Math.cos(angle2)+x);
  endY2 = (int)(branchLength*Math.sin(angle2)+y);
  endX3 = (int)x;
  endY3 = (int)(y - branchLength);
  
  branchLength = branchLength*fractionLength;


  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  line(x, y, endX3, endY3);


  if(branchLength > smallestBranch)
  {
    angle1+=PI/5;
    angle2-=PI/5;
    drawBranches(endX1, endY1, branchLength/4, angle1);
    drawBranches(endX2, endY2, branchLength/4, angle2);
    drawBranches(endX3, endY3, branchLength/4, angle);

  }
  //your code here    
} 