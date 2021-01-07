//Minim Library: use Sketch / Import Library / Add Library
//Minim Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../Music/groove.mp3");  //able to pass absolute path, file name, and URL
  song1.play();
}

void draw() {
}//End draw()

void keyPressed() {

  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
    if ( song1.isPlaying() ) {
      //Pause
    } else {
      //Play
    }
  }//Play-Pause Button
}// End keyPressed()
