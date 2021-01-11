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
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; 
int loopIntNum = 1; //Able to connect this variable to buttons, increasing the loop number //loopIntNum+1 //loopIntNum+=
int currentSong = numberOfSongs - numberOfSongs; //Formula based on previous variable

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //Note: array varaibles based on operators to describe 0, 1, 2
  //Formula Patter: repeating formula easier to program
  song[currentSong] = minim.loadFile("../Music/groove.mp3");  //able to pass absolute path, file name, and URL
  song[currentSong+=1] = minim.loadFile("../Music/Beat_Your_Competition.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/The_Simplest.mp3");
  //Using Pattern in FOR Loop
  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i=currentSong; i<numberOfSongs; i++) {
    songMetaData[i] = song[i].getMetaData();
  }//End FOR Loop, Loading Meta Data
  //
  println("Start of Console"); //Not seen, means output to console too long //Decrease println's or increase memory
  println("Click the Console to Finish Starting this program"); //"Windows expects you to 'click into the window'
  println("Press keyboard to test: P, etc.");
  //
  for ( int i=currentSong; i<numberOfSongs; i++) {
    println("File Name: ", songMetaData[i].fileName() );
    println("Song Length (in milliseconds); ", songMetaData[i].length() );
    println("Song Length (in seconds): ", songMetaData[i].length()/1000 );
    println("Song Length (in mintues and seconds): ", songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60 *60), "seconds" );
    println("Song Title: ", songMetaData[i].title() );
    println("Author: ", songMetaData[i].author() );
    println("Composer: ", songMetaData[i].composer() );
    println("Orchestra: ", songMetaData[i].orchestra() );
    println("Albums: ", songMetaData[i].album() );
    println("Disk: ", songMetaData[i].disc() );
    println("Publisher: ", songMetaData[i].publisher() );
    println("Date Release: ", songMetaData[i].date() );
    println("Copyright: ", songMetaData[i].copyright() );
    println("Comments: ", songMetaData[i].comment() );
    println("Lyrics: ", songMetaData[i].lyrics() );
    println("Track: ", songMetaData[i].track() );
    println("Genre: ", songMetaData[i].genre() );
    println("Encoded: ", songMetaData[i].encoded() );
  }//End Console Output
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
void mousePressed() {
}//End mousePressed()
