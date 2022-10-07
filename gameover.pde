float homeStroke = 0;
void gameover() {
  background(palette[1]);
  homeStroke = 0;

  fill(palette[4]);
  textSize(70);
  text("GAMEOVER", width/2, 150);

  textSize(30);
  text("SCORE: " + score, width/2, height/2);

  text("HIGHSCORE: " + highscore, width/2, height/2 + 50);

  if (dist(width/2, 500, mouseX, mouseY)<150) {
    homeStroke = 5;
    if (mousePressed) {
      mousePressed = false;
      mode = intro;
    }
  }
  fill(#0FB1FF);
  strokeWeight(homeStroke);
  circle(width/2, 600, 128);
}
