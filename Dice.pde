void setup()
{
    size(450, 450);
    noLoop();
}

void draw()
{
    //your code here
    background(251, 241, 199);
    for (int y=0; y<3; y++) {
        for (int x=0; x<3; x++) {
            foo = new Die(x*125+50, y*125+50);
            foo.roll();
            foo.show();
        }
    }
}

void mousePressed()
{
    redraw();
}

class Die //models one single dice cube
{
    //variable declarations here
    int face, myX, myY;
    int[][] colors = {
        {185, 76, 7}, // orange
        {180, 115, 14}, // yellow
        {114, 118, 30}, // green
        {71, 122, 91}, // aqua
        {38, 107, 121}, // blue
        {146, 79, 121}, // purple
    };


    Die(int x, int y) //constructor
    {
        //variable initializations here
        myX = x;
        myY = y;
    }

    void roll()
    {
        //your code here
        face = (int)(Math.random()*6);
    }

    void show()
    {
        //your code here

        fill(colors[face][0], colors[face][1], colors[face][2]); // each number is a different color
        strokeWeight(1.5);
        stroke(81, 64, 54);
        rect(myX, myY, 100, 100, 15);
        fill(81, 64, 54);
        if (face == 0 || face == 2 || face == 4) {
            ellipse(myX+50, myY+50, 10, 10);
        }
        if (face >= 1) {
            ellipse(myX+20, myY+20, 10, 10);
            ellipse(myX+80, myY+80, 10, 10);
        }
        if (face >= 3) {
            ellipse(myX+20, myY+80, 10, 10);
            ellipse(myX+80, myY+20, 10, 10);
        }
        if (face == 5) {
            ellipse(myX+20, myY+50, 10, 10);
            ellipse(myX+80, myY+50, 10, 10);
        }
    }
}
Die foo;
