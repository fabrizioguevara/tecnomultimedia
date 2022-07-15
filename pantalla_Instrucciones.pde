void pantalla_Instrucciones(){
  pantalla = 1;
  background(0, 255, 0);
  fill(0);
  textSize(17);
  textAlign(CENTER);
  text("Utilice A y D o las flechas direccionales, para moverse de izquierda a derecha", height/2, 220);
  text("Dispare proyectiles contra los enemigos con la barra espaciadora", height/2, width/2);
  text("Gana al conseguir un minimo de 10 puntos", height/2, 420);
  text("Puede volver a la pantalla principal en cualquier momento presionando la tecla 'R'", height/2, 460);
  text("Jugar (J)", height/2, 500);
}
