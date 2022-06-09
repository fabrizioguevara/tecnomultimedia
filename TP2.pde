Pasillo pasillo;
void setup(){
  size(400, 600);
  //fullScreen();
  pasillo = new Pasillo();
}
void draw(){
  background(0, 0, 0, 200);
  noStroke();
  fill(0, 0, 0, 25);
  rect(mouseX, mouseY, width, height);
  pasillo.display();
  
}
