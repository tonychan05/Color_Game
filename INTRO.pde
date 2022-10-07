
void intro(){
   image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) {
    f=0;
  }
  translate(width / 2, height/2);
  fill(#FAFFFD);
  stroke(0);
  


  float arclength = 0;

  for (int i = 0; i < message.length(); i++)
  {

    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);


    arclength += w/2;

    float theta = PI + arclength / r;

    pushMatrix();

    translate(r*cos(theta), r*sin(theta));
    rotate(theta+PI/2);
    fill(#F7453E);
    textFont(pixel);
    text(currentChar, 0, 0);
    popMatrix();

    arclength += w/2;
  }
  
  buttonPressed = circularButton (0, 0, 100, buttonPressed);
  if (buttonPressed) {
    buttonPressed = false;
    mode = 1;
  }
  
}

boolean circularButton(float x, float y, float r, boolean bool) {
  stroke(0);
  strokeWeight(3);
  fill(255);

  if (dist(mouseX - width/2, mouseY - height/2, x, y) < r) {
    stroke(#FFFFFF);
    strokeWeight(5);
    if (mousePressed) {
      fill(#ED3C18);
      bool =!bool;
    mousePressed = false;
    randReset();
    score = 0;
    timer = 0;
    maxTime = 300;
    mode = game;
    }
  }
  circle(x, y, r*2);
  return bool;
}
