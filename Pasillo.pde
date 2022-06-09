class Pasillo {
  float rect_ancho = 1;
  int velocidad = 3;
  int grosor = 1;
  //float rect_rotacion = 0;
  
  Pasillo() {
    rectMode(CENTER);
  }
  
  void dibujarCamino(){
    strokeWeight(1);
    stroke(255);
    fill(0);
    triangle(mouseX, mouseY, width/2-100, height, width/2+100, height);
    fill(255);
    rect(mouseX, mouseY, 10, 22);
  }
  
  void dibujarRect() {
    noFill();
    strokeWeight(this.grosor);
    stroke(255);
    //pushMatrix();
    translate(mouseX, mouseY);
    //rotate(radians(this.rect_rotacion));
    rect(mouseX, mouseY, this.rect_ancho, this.rect_ancho);
    //popMatrix();
    this.rect_ancho += this.rect_ancho/velocidad;
    //this.rect_rotacion += 1;
  }
  void display() {
    this.dibujarRect();
    if (this.rect_ancho > width * 2){
      this.rect_ancho = 1;
    }
    this.dibujarCamino();
  }
}
