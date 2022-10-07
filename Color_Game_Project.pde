import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
int mode;
final int intro = 0;
final int game = 1;
final int gameover= 2;

color palette[] = new color[5];
String words[] = new String[5];
PFont font;

int rand1, rand2;
int score, highscore;
boolean buttonPressed;
String message = "Color Game";
float r = 100;
PFont pixel;
PImage [] gif;
PImage [] gif1;
int numberOfFrames;

int f;


void setup() {
  palette[0] = #003049; // Black/Blue
  palette[1] = #d62828; // Red
  palette[2] = #f77f00; // Orange
  palette[3] = #fcbf49; // Yellow
  palette[4] = #eae2b7; // White/Cream
  words[0] = "BLUE";
  words[1] = "RED";
  words[2] = "ORANGE";
  words[3] = "YELLOW";
  words[4] = "WHITE";
  numberOfFrames =20;
  gif = new PImage[numberOfFrames];
  int i = 0;
  while ( i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i++;

  }
     minim = new Minim(this);
  song = minim.loadFile("song.mp3");
  song.play();
  textAlign(CENTER);

  size(600, 800);

  pixel=createFont("pixel.TTF", 37);
}
void draw(){
switch(mode) {
  case intro:
    intro();
    break;
  case game:
    game();
    break;
  case gameover:
    gameover();
    break;
  default:
    println("ERROR");
    break;
  }
}
