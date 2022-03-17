// Team 2
// CanBot
// Robot File 
// Robots Vision
// Tecnológico de Monterrey

/* This File Receives the Data Parameters extracted from the Camera Images in order
to execute Physical Actions so it can place the cans in their corresponding positions.
*/

String[] p;

int logTracker;

int redDetected;

int minXRed;
int maxXRed;
int minYRed;
int maxYRed;
float avgXRed;
float avgYRed;

int blueDetected;

int minXBlue;
int maxXBlue;
int minYBlue;
int maxYBlue;
float avgXBlue;
float avgYBlue;

int leftGrabPointXRed;
int leftGrabPointYRed;
int rightGrabPointXRed;
int rightGrabPointYRed;

int leftGrabPointXBlue;
int leftGrabPointYBlue;
int rightGrabPointXBlue;
int rightGrabPointYBlue;

void setup() {
  logTracker = 0;

  redDetected = 0;
  
  minXRed = 0;
  maxXRed = 0;
  minYRed = 0;
  maxYRed = 0;
  avgXRed = 0;
  avgYRed = 0;
  
  blueDetected = 0; 
  
  minXBlue = 0;
  maxXBlue = 0;
  minYBlue = 0;
  maxYBlue = 0;
  avgXBlue = 0;
  avgYBlue = 0;
  
  leftGrabPointXRed = 0;
  leftGrabPointYRed = 0;
  rightGrabPointXRed = 0;
  rightGrabPointYRed = 0;
  
  leftGrabPointXBlue = 0;
  leftGrabPointYBlue = 0;
  rightGrabPointXBlue = 0;
  rightGrabPointYBlue = 0;
}


void draw() {
  p = loadStrings("../fifo.txt");
  if(p.length > 0) setParams();
  if(redDetected == 1 && blueDetected == 1){
    println(logTracker," -> Red Object: [ minX : ", minXRed, " | maxX : ", maxXRed, " | minY : ", minYRed, " | maxY : ", maxYRed, " ] // Blue Object: [ minX : ", minXBlue, " | maxX : ", maxXBlue, " | minY : ", minYBlue, " | maxY : ", maxYBlue, " ]");
  } else if(redDetected == 1){
    println(logTracker," -> Red Object: [ minX : ", minXRed, " | maxX : ", maxXRed, " | minY : ", minYRed, " | maxY : ", maxYRed, " ]");
  } else if(blueDetected == 1){
    println(logTracker," -> Blue Object: [ minX : ", minXBlue, " | maxX : ", maxXBlue, " | minY : ", minYBlue, " | maxY : ", maxYBlue, " ]");
  }
}

void setParams() {
  
  logTracker = int(p[0]);

  redDetected = int(p[1]);
  
  minXRed = int(p[2]);
  maxXRed = int(p[3]);
  minYRed = int(p[4]);
  maxYRed = int(p[5]);
  avgXRed = float(p[6]);
  avgYRed = float(p[7]);
  
  blueDetected = int(p[8]); 
  
  minXBlue = int(p[9]);
  maxXBlue = int(p[10]);
  minYBlue = int(p[11]);
  maxYBlue = int(p[12]);
  avgXBlue = float(p[13]);
  avgYBlue = float(p[14]);
  
  leftGrabPointXRed = int(p[15]);
  leftGrabPointYRed = int(p[16]);
  rightGrabPointXRed = int(p[17]);
  rightGrabPointYRed = int(p[18]);
  
  leftGrabPointXBlue = int(p[19]);
  leftGrabPointYBlue = int(p[20]);
  rightGrabPointXBlue = int(p[21]);
  rightGrabPointYBlue = int(p[22]);
  
}
