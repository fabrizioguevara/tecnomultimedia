class Disparo {
  float x;
  float y;
  float velocidad_y;
  float tamano;
  
  Disparo (Nave nave) {
    this.x = nave.pos_x;
    this.y = nave.pos_y - 15;
    this.velocidad_y = -10;
    this.tamano = 10;
  }
  
  void disparar() {
    fill (255, 0, 0);
    ellipse (this.x, this.y, tamano, tamano);
    this.y += this.velocidad_y;
  }
}
