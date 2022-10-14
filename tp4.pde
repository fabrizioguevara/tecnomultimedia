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
    image(libro.tapa.contenido, width/2, height/2);
    fill(0);
    text("Utilice las flechas del teclado para", width/2, 500);
    text("navegar a través del comic", width/2, 530);
  }
  else if (libro.pagAct != -1) {
    image(libro.paginas[libro.pagAct].contenido, width/2, height/2);
  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    if (libro.PasarPagina(libro.pagAct)) {
      libro.pagAct ++;
    }
    if (libro.pagAct == libro.paginas.length) {
      libro.pagAct = -1;
    }
  }
  else {
    if (keyCode == LEFT) {
      if (libro.VolverPagina(libro.pagAct)) {
        libro.pagAct --;
      }
      else {
        libro.pagAct = -1;
      }
    }
  }
}
