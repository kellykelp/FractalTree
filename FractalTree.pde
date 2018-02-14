private double fractionLength = 0.8; 
private int smallestBranch = 5; 
private double branchAngle = .8;  
public void setup() 
{   
	size(640,480);    
		// noLoop(); 
} 
public void draw() 
{   
	// branchAngle = float(mouseY)/650;
	// fractionLength = float(mouseX;
	background(0);   
	//stroke(244, 214, 19);
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	strokeWeight(2);   
	line(320,480,320,380);
	// branchAngle = (float)mouseX;  
	// fractionLength = (float)mouseY;
	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1, angle2, angle3, angle4;
	int endX1, endY1, endX2, endY2, endX3, endY3, endX4, endY4;
	
	angle1 = angle + branchAngle; //+ (mouseX/650);
	angle2 = angle - branchAngle; //+ (mouseY/650);
	angle3 = angle + /*2.5*0.55 */- branchAngle;
	angle4 = angle - /*2.5*0.55 */ + branchAngle;  
	branchLength = branchLength * fractionLength; 
	
	endX1 = (int)(branchLength*Math.cos(angle1) + x);
	endY1 = (int)(branchLength*Math.sin(angle1) + y);
	
	endX2 = (int)(branchLength*Math.cos(angle2) + x);
	endY2 = (int)(branchLength*Math.sin(angle2) + y);

	endX3 = (int)(branchLength*Math.cos(angle3) + x);
	endY3 = (int)(branchLength*Math.sin(angle3) + y);

	endX4 = (int)(branchLength*Math.cos(angle4) + x);
	endY4 = (int)(branchLength*Math.sin(angle4) + y);

	stroke(x+10, y-50, y);
	line(x, y, endX1, endY1);
	//stroke(x-100, y+50, y-200);
	line(x, y, endX2, endY2);
	// stroke(x-100, y+50, y);
	line(x, y, endX3, endY3);
	// stroke(x-100, y+501, y-200);
	line(x, y, endX4, endY4);

	if (branchLength > smallestBranch)
	{
		drawBranches(endX1, endY1, branchLength/1.1, angle1);
		drawBranches(endX2, endY2, branchLength/1.1, angle2);
		// drawBranches(endX3, endY3, branchLength/1.5, angle3);
		// drawBranches(endX4, endY4, branchLength, angle4);
	}
} 
