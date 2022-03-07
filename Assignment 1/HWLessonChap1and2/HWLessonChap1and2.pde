line (0, 0, 9, 6);
ellipse (20, 20, 20, 20);
//ellipse (x, y, width, height);
triangle (10, 10, 20, 20, 30, 30);
//triangle(x1, y1, x2, y2, x3, y3);
point (0, 2);
point (0, 4);
rectMode(CORNER);
//places it into a corner
rect(5, 0, 4, 3);
ellipseMode(CENTER);
ellipse(3, 7, 4, 4);

background (255);
stroke(0);
//stroke is the thickness of the line
fill(150);
//fill is kind of like the color, just from white to gray to black
//and the other way around
rect(50, 50, 75, 100);
//nofill() leaves the shape with only an outline
fill (255, 0, 0);
//fill(Red, Green, Blue);

colorMode(RGB, 50);
//above is the range of RGB values from 0-100
colorMode(RGB, 100, 500, 10, 255);
//red values range from 0-100; green from 0-500; blue from 0-10; alpha from 0-255
println("This is to make a message.");
