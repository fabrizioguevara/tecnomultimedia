//https://youtu.be/_XMPOA5oVuQ
//Fabrizio Guevara 91357/0
import processing.sound.*;

SpaceShooter spaceshooter;

void setup(){
  size (700, 700);
  spaceshooter = new SpaceShooter();
  spaceshooter.inicializarSpaceshooter();
}

void draw(){
  spaceshooter.controlador();
}

void keyPressed() {
  if (spaceshooter.estado == 0 || spaceshooter.estado == 2 || spaceshooter.estado == 4 || spaceshooter.estado == 5) {
    if (key == 'j'){
      if (spaceshooter.nivel_actual == 1) {
        spaceshooter.estado = 1;
      } else if (spaceshooter.nivel_actual == 2) {
          spaceshooter.nivel_actual = 3;
      }
    } else if (key == 'c'){ //pantalla de creditos
        spaceshooter.estado = 5;
    } else if (key == 'v'){ // volver a inicio
        spaceshooter.estado = 0;
    } else if (key == 'r'){ //reiniciar juego
        spaceshooter.estado = 0;
        spaceshooter.nivel_actual = 1;
    }
  }
  if (spaceshooter.estado == 1 || spaceshooter.estado == 3) {
    if (key == CODED) {
      if (keyCode == UP) {
        spaceshooter.juego.moverNave("arriba");
      } else if(keyCode == DOWN) {
        spaceshooter.juego.moverNave("abajo");
      } else if (keyCode == LEFT) {
        spaceshooter.juego.moverNave("izq");
      } else if (keyCode == RIGHT) {
        spaceshooter.juego.moverNave("der");
      }
    } else if (key == ' ' && spaceshooter.estado == 1) {
      spaceshooter.juego.naveDispara();
    }
  }
}
