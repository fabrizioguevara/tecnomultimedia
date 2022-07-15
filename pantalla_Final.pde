void pantalla_Final(int puntuacion){
  pantalla = 4;
  textAlign(CENTER);
  if (puntuacion < 10){
    background(255, 0, 0);
    fill(0);
    text("Puntuacion: "+ puntuacion, width/2, height/6);
    text("Volver a Jugar: (J)", width/2, height/4);
    text("Volver a pantalla inicial: (R)", width/2, height/2);
  }
  else{
    fill (0);
    background(0, 255, 0);
    text("¡Ganaste!", width/2, height/8);
    text("Puntuacion: " + puntuacion, width/2, height/6);
    text("Volver a Jugar: (J)", width/2, height/4);
    text("Volver a pantalla inicial: (R)", width/2, height/2);
  }
}
