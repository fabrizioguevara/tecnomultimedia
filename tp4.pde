//https://youtu.be/zqJely_KmLg
//Fabrizio Guevara 91357/0
Libro libro;

void setup() {
  size(400, 640);
  libro = new Libro("Civil War", 7);
  libro.inicializarLibro();
}

void draw() {
  if (libro.pagAct == -1) {
    libro.dibujarTapa();
  }
  else if (libro.pagAct != -1) {
    libro.dibujarPagina();
  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    if (libro.pasarPagina(libro.pagAct)) {
      libro.pagAct ++;
    }
    if (libro.pagAct == libro.paginas.length) {
      libro.pagAct = -1;
    }
  }
  else {
    if (keyCode == LEFT) {
      if (libro.volverPagina(libro.pagAct)) {
        libro.pagAct --;
      }
      else {
        libro.pagAct = -1;
      }
    }
  }
}
