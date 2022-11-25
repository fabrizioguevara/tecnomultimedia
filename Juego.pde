class Juego {
  int puntaje;
  Asteroide [] asteroides = new Asteroide [10] ;
  Nave nave;
  ArrayList<Estrella> estrellas = new ArrayList<Estrella>();
  SoundFile sonido;
  
  Juego () {
    inicializarJuego();
  }
  
  void nivel1 (boolean ok) {
    while (checkeoColision(ok) || puntaje == 10){
      background(0);
      text(puntaje, 10, 10);
      dibujarEstrellas();
      this.dibujarAsteroides();  
      nave.dibujarNave();
    }
    estrellas.clear();
  }
  
    void nivel2 (boolean ok) {
      background(0);
      int segundos = 0;
      while (checkeoColision(ok) || segundos == 20) {
        text(segundos, 10, 10);
        if (int(frameCount/frameRate)%segundos == 0) { segundos++; }
        this.dibujarAsteroides();  
        nave.dibujarNave();     
  }
  estrellas.clear();
}
  
  void inicializarJuego () {
    sonido = new SoundFile (this, "sonido_disparo.mp3");
    for (int i = 0; i < asteroides.length; i++) {
      asteroides[i] = new Asteroide();
    }
    nave = new Nave();
    puntaje = 0;
  }
  
  void moverNave(String mover){
    if(mover == "arriba"){
      nave.moverArriba(true);
    } else if (mover == "abajo"){
        nave.moverAbajo(true);
    } else if (mover == "izq"){
        nave.moverIzq(true);
    } else if(mover == "der"){
        nave.moverDer(true);
    }
  }
  
  void naveDispara(){
    sonido.play();
    nave.disparos[nave.municion_act] = new Disparo(nave);
    nave.disparos[nave.municion_act].disparar();
    nave.municion_act++;
  }
  
  void dibujarAsteroides() {
    for(int i = 0; i < asteroides.length; i++) {
      asteroides[i].dibujarAsteroide();
    }
  }
  
  boolean checkeoColision(boolean ok) {
    for (int i = 0; i < asteroides.length; i++) {
      if (((asteroides[i].pos_x - nave.pos_x) < 1) && ((asteroides[i].pos_y - nave.pos_y) < 1)) {
        ok = false;
        return false;
      } else if (((asteroides[i].pos_x - nave.disparos[i].x)) < 1 && ((asteroides[i].pos_y - nave.disparos[i].y) < 1)) {
          asteroides[i].pos_y = -50;
          puntaje++;
          if (puntaje == 10) {ok = true;}
          return true;
      }
  }
  return true;
  }

  void dibujarEstrellas() {
    strokeWeight(8);
    stroke(255);
    if (frameCount % 4 == 0) {
      Estrella estrella = new Estrella();
      estrellas.add(estrella);
    }
    for (int i = 0; i<estrellas.size(); i++) {
      Estrella EstrellaAct = estrellas.get(i);
      EstrellaAct.dibujarEstrella();
  }
}

}
