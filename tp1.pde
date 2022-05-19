//variables
PFont fuente;
PImage fondo0;
PImage fondo1;
PImage fondo2;
PImage titulo;
PImage [] megaman_run;
PImage [] megaman_stand;
int tps;
int runs;
int stand;
int cont;
int cont0;
int stands;
int velocidad;
int coordenada_xf0;
int coordenada_xf1;
int coordenada_xf2;
int posY1;
int posY2;
int posY3;
int posY4;
int posY5;
int posY6;
int posY7;
int posY8;
int posY9;
int posY10;
boolean next;
void setup () {
//Inicializar variables  
  size (400, 400);
  //fuente
  fuente = loadFont("OCRAExtended-60.vlw");
  textFont(fuente);
  //fondos
  coordenada_xf0 = 200;
  coordenada_xf1 = 400;
  coordenada_xf2 = 800;
  velocidad = 5;
  fondo0 = loadImage("fondo0.png");
  fondo1 = loadImage("fondo1.png");
  fondo2 = loadImage("fondo1.png");
  fondo0.resize(400, 200);
  fondo1.resize(400, 200);
  fondo2.resize(400, 200);
  //ciudad.resize(400, 400);
  titulo = loadImage("titulo.png");
  titulo.resize(300, 150);
  //Animaciones
  runs = 10;
  cont = 1;
  cont0 = 1;
  stands = 3;
  next = false;
  //Correr frames
  megaman_run = new PImage[runs];
  for (int i = 0; i < megaman_run.length; i++) {
    megaman_run[i] = loadImage("run" + i + ".png");
    megaman_run[i].resize(40, 45);
  }
  //Standing frames
  megaman_stand = new PImage[stands];
  for (int i= 0; i < megaman_stand.length; i++) {
    megaman_stand[i] = loadImage("standing" + i + ".png");
    megaman_stand[i].resize(40, 45);
  }  
  frameRate(15);
  imageMode(CENTER);
  stroke(0);
  posY1 = 400;
  posY2 = 500;
  posY3 = 600;
  posY4 = 700;
  posY5 = 400;
  posY6 = 500;
  posY7 = 600;
  posY8 = 700;
  posY9 = 800;
  posY10 = 900;
}


void draw () {
  //Fondo priemra pantalla
  background(0);
  image(titulo, 200, 120);
  image(megaman_stand[cont0], 60, 245);
  cont0 = (cont0 + 1) % megaman_stand.length;
  //start
  textSize(60);
  text("start", 120, 260 );
  if (mousePressed && mouseButton == LEFT){
    next = true;
  }
  if (next == true) {
      background(0);
      text("PERSONAJES:", 10, posY1);
      text("Mega Man X", 20, posY2);
      text("ZERO", 120, posY3);
      text("Axl", 125, posY4);
      posY1 = posY1 - 5;
      posY2 = posY2 - 5;
      posY3 = posY3 - 5;
      posY4 = posY4 - 5;
      if (posY4 < 0) {
        //Fondos musica y direccion pantalla
        coordenada_xf0 = coordenada_xf0 - velocidad;
        coordenada_xf1 = coordenada_xf1 - velocidad;
        coordenada_xf2 = coordenada_xf2 - velocidad;
        image(fondo0, coordenada_xf0, 200);
        if (coordenada_xf0 == -200) {
          coordenada_xf0 = 800;
        }
        image(fondo1, coordenada_xf1, 200);
        if (coordenada_xf1 == -200) {
          coordenada_xf1 = 800;
          image(fondo1, coordenada_xf1, 200);
        }
        image(fondo2, coordenada_xf2, 200);
        if (coordenada_xf2 == -200) {
          coordenada_xf2 = 800;
        }  
        //Animación corriendo
        image(megaman_run[cont], 60, 245);
        cont = (cont + 1) % megaman_run.length;
    
        //Animación texto
        textSize(20);
        text("Programadores:", 100, posY5);
        text("Koichiro Nakamura", 100, posY6);
        text("Keiji Kubori", 100, posY7);
        text("Disenadores:", 100, posY8);
        text("Hayato Kaji", 100, posY9);
        text("Kazunori Tazaki", 100, posY10);
        posY5 = posY5 - 5;
        posY6 = posY6 - 5;
        posY7 = posY7 - 5;
        posY8 = posY8 - 5;
        posY9 = posY9 - 5;
        posY10 = posY10 - 5;
      
    }
  }
}
