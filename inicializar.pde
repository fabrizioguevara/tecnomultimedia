void inicializar(){
  pantalla = 0;
  puntuacion = 0;
  posEnemigo_1 = -1000;
  posEnemigo_2 = -1200;
  posEnemigo_3 = -1300;
  posEnemigo_4 = -1400;
  posEnemigo_5 = -1500;
  posEnemigo_6 = -1600;
  posEnemigo_7 = -1700;
  posEnemigo_8 = -1500;
  posEnemigo_9 = -1400;
  posEnemigo_10 = -1300;
  posEnemigo_11 = -1200;
  posEnemigo_12 = -1000;
  for (int i = 0; i < cantDisparos; i++){
    disparos[i] = 650;
  }
  balas = cantDisparos - 1;
}
