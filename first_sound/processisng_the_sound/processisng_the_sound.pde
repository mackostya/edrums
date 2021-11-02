import processing.serial.*;
import ddf.minim.*;

Serial myPort;
Minim minim;
AudioPlayer player;
byte arbitraryCode = 97;

void setup()
{
    //In the next line, you'll need to change this based on your USB port name
    myPort = new Serial(this, "/dev/cu.usbmodem144401", 9600);
    minim = new Minim(this);
    
    //Put in the name of your sound file below, and make sure it is in the same directory
    player = minim.loadFile("test_file.mp3");
}

void draw() {
    while(myPort.available() > 0) {
        int inByte = myPort.read();
        if (inByte == arbitraryCode) {
            player.rewind();
            player.play();
        }
    }
}
