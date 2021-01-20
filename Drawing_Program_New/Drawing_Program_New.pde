// Global Variables\
String title= "X";
PFont quitButtonFont;
color purple = #2C08FF; //Ink
color purpleQuitButton = #FFDBFB;
color yellowQuitButton = #FEFFDB;
color ink, black=#000000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter; //Needed for ellipses
Boolean draw=false;

void quitButtonRect() {
  rect(width*19/20, height*0, width*1/20, height*1/20);
}
void setup() {
  size(500, 600);

      quitButtonFont = createFont ("Harrington", 55); 
  quitButtonRect(); 

  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  //
  ink = black; // example to change ink
  drawingDiameter = width*1/100; //Needed for ellipses
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

void draw() 
  quitButtonDraw() {
 if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    fill(yellowQuitButton);
    quitButtonRect();
  } else {
    fill(purpleQuitButton);
    quitButtonRect();
  }
  if (draw == true) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
}

void mousePressed() {
  quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    void quitButtonMouseClicked() {
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    exit();
  }
}
  }
