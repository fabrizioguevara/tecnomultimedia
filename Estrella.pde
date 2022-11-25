class Estrella {
  float x, y;
  int vy;
  
  Estrella() { 
    this.x = random(width);
    this.y = 0;
    this.vy = 8; //velocidad
  }
  
  void dibujarEstrella() {
    y+=vy;
    point(x,y);
    
  }
}
