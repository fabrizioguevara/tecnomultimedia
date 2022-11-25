class Nave {
  PImage modelo;  
  int balas = 100;
  int municion_act = 1;
  Disparo [] disparos = new Disparo [balas];
  float pos_x;
  float pos_y;
  float velocidad_x;
  float velocidad_y;
  boolean mover;
  int velocidad;
  
  Nave() {
    imageMode(CENTER);
    this.modelo = loadImage("nave_sprite.png");
    modelo.resize(50, 50);
    this.pos_x = width/2;
    this.pos_y = height - height/4;
    this.velocidad_x = 0;
    this.velocidad_y = 0;
    this.velocidad = 10;
  }
  
  void dibujarNave() { 
    image(modelo, pos_x, pos_y);
  }
  
  void moverArriba(boolean mover) {
    if (mover == true) {
      this.velocidad_y =- velocidad;
    } else {
      velocidad_y = 0;
    }
    pos_y += velocidad_y;
  }
  
  void moverAbajo(boolean mover) {
    if (mover == true) {
      this.velocidad_y = velocidad;
    } else {
      velocidad_y = 0;
    }
    pos_y += velocidad_y;
  }
  
  void moverIzq(boolean mover) {
    if (mover == true) {
      this.velocidad_x =- velocidad;
    } else {
      velocidad_x = 0;
    }
    pos_x += velocidad_x;
  }
  
  void moverDer(boolean mover) {
    if (mover == true) {
      this.velocidad_x = velocidad;
    } else {
      velocidad_x = 0;
    }
    pos_x += velocidad_x;
  }
}
