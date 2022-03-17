// Team 2
// CanBot
// Robot File 
// Robots Vision
// Tecnológico de Monterrey

/* This File Receives the Data Parameters extracted from the Camera Images in order
to execute Physical Actions so it can place the cans in their corresponding positions.
*/

String[] params;

void setup() {

}


void draw() {
  params = loadStrings("../fifo.txt");
  println("There are " + params.length + " lines");
  for (int i = 0; i < params.length; i++) {
      println(params[i]);
  }
}
