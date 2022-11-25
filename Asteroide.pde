class Asteroide {
  PImage modelo;
  int tamano; 
  float pos_x;
  float pos_y;
  int velocidad_caida = 8;
  
  Asteroide () {
    modelo = loadImage("asteroide_sprite.png");
    this.tamano = (int)random(80, 120);
    modelo.resize(tamano, tamano);
  }
  
  void dibujarAsteroide() {
    image(modelo, pos_x = (random(width)), tamano);
    this.pos_y -= velocidad_caida;
  }
}
