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
AudioMetaData songMetaData1; 
int loopIntNum = 1; //Able to connect this variable to buttons, increasing the loop number //loopIntNum+1 //loopIntNum+=

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../Music/groove.mp3");  //able to pass absolute path, file name, and URL
  songMetaData1 = song1.getMetaData(); 
  //
  println("Start of Console"); //Not seen, means output to console too long //Decrease println's or increase memory
  println("Click the Console to Finish Starting this program"); //"Windows expects you to 'click into the window'
  println("Press keyboard to test: P, etc.");
  //
  println("File Name: ", songMetaData1.fileName() );
  println("Song Length (in milliseconds); ", songMetaData1.length() );
  println("Song Length (in seconds): ", songMetaData1.length()/1000 );
  println("Song Length ( in mintues and seconds): ", songMetaData1. );
  println("Song Title: ", songMetaData1.title() );
  println("Author: ", songMetaData1.author() );
  println("Composer: ", songMetaData1.composer() );
  println("Orchestra: ", songMetaData1.orchestra() );
  println("Albums: ", songMetaData1.album() );
  println("Disk: ", songMetaData1.disc() );
  println("Publisher: ", songMetaData1.publisher() );
  println("Date Release: ", songMetaData1.date() );
  println("Copyright: ", songMetaData1.copyright() );
  println("Comments: ", songMetaData1.comment() );
  println("Lyrics: ", songMetaData1.lyrics() );
  println("Track: ", songMetaData1.track() );
  println("Genre: ", songMetaData1.genre() );
  println("Encoded: ", songMetaData1.encoded() );
  //
}

void draw() {
}//End draw()

void keyPressed() {
  //
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {//.legnth() = end
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }//End of Play-Pause Button
  //
  if (key == 's' || key == 'S') {//Stop Button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else if ( song1.position() == song1.length() ) {//.legnth() = end
      song1.rewind();
    } else { //Song is not playing
      song1.rewind();
    }
  }// End Stop Button
  //
  if ( key == 'f' || key == 'F') song1.skip(1000); // skip forward 1 second (1000 milliseconds)
  if ( key == 'r' || key == 'R') song1.skip(-1000); // skip backward 1 second (1000 milliseconds)
  //
  if ( key == 'l' || key =='L' ) song1.loop(loopIntNum); //Loop Button
  //
}// End keyPressed()
//
void mousePressed() {}//End mousePressed()
