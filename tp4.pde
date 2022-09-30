//https://youtu.be/zqJely_KmLg
//Fabrizio Guevara 91357/0

Libro libro;
int pagAct = -1;

void setup() {
  size(400, 640);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(20);
  libro = new Libro("Civil War", 7);
  libro.CargarTapa();
  libro.CargarPaginas();
  background(0);
}

void draw() {
  if (pagAct == -1) {
    libro.tapa.contenido.resize(400, 640);
    image(libro.tapa.contenido, width/2, height/2);
    fill(0);
    text("Utilice las flechas del teclado para", width/2, 500);
    text("navegar a través del comic", width/2, 530);
  }
  else if (pagAct != -1) {
    libro.paginas[pagAct].contenido.resize(400, 640);
    image(libro.paginas[pagAct].contenido, width/2, height/2);
  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    if (libro.PasarPagina(pagAct)) {
      pagAct ++;
    }
    if (pagAct == libro.paginas.length) {
      pagAct = -1;
    }
  }
  else {
    if (keyCode == LEFT) {
      if (libro.VolverPagina(pagAct)) {
        pagAct --;
      }
      else {
        pagAct =-1;
      }
    }
  }
}
