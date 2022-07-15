//https://youtu.be/N8uiRZYDyEw
//Fabrizio Guevara 91357/0
int pantalla = 0;
int puntuacion;
float velocidad = 6;
float velocidadNave = 20;
float velocidadEnemigo = 4;
float posNaveX = 350;
float posNaveY = 650;
float posNaveAct;
float posEnemigo_1;
float posEnemigo_2;
float posEnemigo_3;
float posEnemigo_4;
float posEnemigo_5;
float posEnemigo_6;
float posEnemigo_7;
float posEnemigo_8;
float posEnemigo_9;
float posEnemigo_10;
float posEnemigo_11;
float posEnemigo_12;
boolean derecha;
boolean izquierda;
boolean disparo;
boolean rastro;
int balas;
int cantDisparos = 100;
float [] disparos = new float [cantDisparos];

void setup(){
  size(700, 700);
  inicializar();
}

void draw(){
  textSize(40);
  if (pantalla == 0){  
    pantalla_Inicio();
  }
  if (pantalla == 1){
    pantalla_Instrucciones();
  }
  if (pantalla == 2){
    pantalla_Juego();
  }
  if (pantalla == 3){
    pantalla_Creditos();
  }
  if (pantalla == 4){
    pantalla_Final(puntuacion);
  }
}

void keyPressed(){
 if (pantalla == 0){
   if (key == 'i' || key == 'I'){
     pantalla_Instrucciones();
   }
   else if (key == 'j' || key == 'J'){
     pantalla_Juego();
   }
   else if (key == 'c' || key == 'C'){
     pantalla_Creditos();
   }
 }
 if (pantalla == 1){
   if (key == 'J' || key == 'j'){
     pantalla_Juego();
   }
 }
 if (pantalla == 2){
   if (keyCode == RIGHT || key == 'd' || key == 'D'){
     derecha = true;
   }
   else if (keyCode == LEFT || key == 'a' || key == 'A'){
     izquierda = true;;  
   }
   else if (key == ' '){
    disparo = true;
   }
   if (key == 'r' || key == 'R'){
     inicializar();
     pantalla_Inicio();
   }
 }
 if (pantalla == 3){
   if (key == 'r' || key == 'R'){
     inicializar();
     pantalla_Inicio();
   }
 }
 if (pantalla == 4){
   if (key == 'J' || key == 'j'){
     inicializar();
     pantalla_Juego();
   }
   else if (key == 'r' || key == 'R'){
     inicializar();
     pantalla_Inicio();
   }
 }
}
