class SpaceShooter {
  int estado = 0;
  PImage [] pantallas = new PImage [5]; 
  Juego juego;
  boolean paso_nivel;
  int nivel_actual;
  
  SpaceShooter (){
  }
  
  void cargarArregloPantallas() {
    imageMode(CENTER);
    for(int i = 0; i < pantallas.length; i++){
      pantallas[i] = loadImage("pantalla_" + i +".png");
    }
  }
  
  void controlador (){ 
    if (estado == 0) { //pantalla 0 inicio
      image(pantallas[0], width/2, height/2);
    } else if (estado == 1) { // pantalla 1 inicial prejuego
        image(pantallas[1], width/2, height/2);
    } else if (estado == 2){ // pantalla nivel 1
        juego.nivel1(paso_nivel);
          if (paso_nivel == false){// si pierde nivel
            estado = 5;
            image(pantallas[4], width/2, height/2); //pantalla 4 perdiste
          }
    } else if (estado == 3) {// pantalla entre niveles
          image(pantallas[2], width/2, height/2); //pantalla 2 pasaste nivel 1
      } else if (estado == 4){ // pantalla si gana nivel 2
        image(pantallas[3], width/2, height/2); // pantalla 3 ganaste nivel 2
        } else if (estado == 5){
            image(pantallas[5], width/2, height/2); //pantalla 4 creditos
        }
       }
  
  void inicializarSpaceshooter() {
    estado = 0;
    juego.inicializarJuego();
    paso_nivel = false;
    nivel_actual = 1;
    cargarArregloPantallas();
  }
}
