void pantalla_Juego(){
  pantalla = 2;
  background(0);
  strokeWeight(8);
  stroke(255);
  fill(255);
  point(random(width), random(700));
  fill(255, 0, 0);
  stroke(200);
  square(10, posEnemigo_1 += velocidadEnemigo, 70);
  square(50, posEnemigo_2 += velocidadEnemigo, 70);
  square(90, posEnemigo_3 += velocidadEnemigo, 70);
  square(130, posEnemigo_4 += velocidadEnemigo, 70);
  square(170, posEnemigo_5 += velocidadEnemigo, 70);
  square(210, posEnemigo_6 += velocidadEnemigo, 70);
  square(250, posEnemigo_7 += velocidadEnemigo, 70);
  square(290, posEnemigo_8 += velocidadEnemigo, 70);
  square(340, posEnemigo_9 += velocidadEnemigo, 70);
  square(420, posEnemigo_10 += velocidadEnemigo, 70);
  square(500, posEnemigo_11 += velocidadEnemigo, 70);
  square(600, posEnemigo_12 += velocidadEnemigo, 70);
  fill(255, 0, 0);
  stroke(255);
  if (derecha == true){
    posNaveX += velocidadNave;
    derecha = false;
  }
  else if (izquierda == true){
    posNaveX -= velocidadNave;
    izquierda = false;
  }
  if (disparo == true){
    if (balas > 0){
      posNaveAct = posNaveX;
      ellipse(posNaveAct, disparos[balas] -= 10, 1, 20);
      balas --;
      rastro = true;
    }
  disparo = false;
  }
  triangle(posNaveX, posNaveY-17.32, posNaveX-10, posNaveY, posNaveX+10, posNaveY);
  if (rastro == true && disparos[balas] > -10){ 
    ellipse(posNaveAct, disparos[balas]-= 10 , 1, 20);
  }
  if (disparos[balas] < -10){
    rastro = false;
  }
  if (dist(posNaveAct, disparos[balas], 10, posEnemigo_1) < 50){
    posEnemigo_1 = -1000;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 50, posEnemigo_2) < 50){
    posEnemigo_2 = -1200;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 90, posEnemigo_3) < 50){
    posEnemigo_3 = -1300;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 130, posEnemigo_4) < 50){
    posEnemigo_4 = -1400;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 170, posEnemigo_5) < 50){
    posEnemigo_5 = -1500;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 210, posEnemigo_6) < 50){
    posEnemigo_6 = -1600;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 250, posEnemigo_7) < 50){
    posEnemigo_7 = -1700;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 290, posEnemigo_8) < 50){
    posEnemigo_8 = -1500;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 340, posEnemigo_9) < 50){
    posEnemigo_9 = -1400;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 420, posEnemigo_10) < 50){
    posEnemigo_10 = -1300;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 500, posEnemigo_11) < 50){
    posEnemigo_11 = -1200;
    rastro = false;
    puntuacion++;
  }
  if (dist(posNaveAct, disparos[balas], 600, posEnemigo_12) < 50){
    posEnemigo_12 = -1000;
    rastro = false;
    puntuacion++;
  }
  if (posEnemigo_1 > 750){
    posEnemigo_1 = -1000;
  }
  if (posEnemigo_2 > 750){
    posEnemigo_2 = -1000;
  }
  if (posEnemigo_3 > 750){
    posEnemigo_3 = -1000;
  }
  if (posEnemigo_4 > 750){
    posEnemigo_4 = -1000;
  }
  if (posEnemigo_5 > 750){
    posEnemigo_5 = -1000;
  }
  if (posEnemigo_6 > 750){
    posEnemigo_6 = -1000;
  }
  if (posEnemigo_7 > 750){
    posEnemigo_7 = -1000;
  }
  if (posEnemigo_8 > 750){
    posEnemigo_8 = -1000;
  }
  if (posEnemigo_9 > 750){
    posEnemigo_9 = -1000;
  }
  if (posEnemigo_10 > 750){
    posEnemigo_1 = -1000;
  }
  if (posEnemigo_11 > 750){
    posEnemigo_12 = -1000;
  }
  if (posEnemigo_1 > 750){
    posEnemigo_1 = -1000;
  }
  if (dist(posNaveX, posNaveY, 10, posEnemigo_1) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 50, posEnemigo_2) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 90, posEnemigo_3) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 130, posEnemigo_4) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 170, posEnemigo_5) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 210, posEnemigo_6) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 250, posEnemigo_7) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 290, posEnemigo_8) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 340, posEnemigo_9) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 420, posEnemigo_10) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 500, posEnemigo_11) < 10){
    pantalla = 4;
  }
    if (dist(posNaveX, posNaveY, 600, posEnemigo_12) < 10){
    pantalla = 4;
  }
  fill(255);
  text(puntuacion, 40, 40);
}
