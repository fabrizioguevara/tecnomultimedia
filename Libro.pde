class Libro {
  String nombre;
  Tapa tapa;
  int cant;
  Pagina[] paginas;
  int pagAct;

  Libro () {
  }
  
  Libro (String nombreLibro, int cantPaginas) {
    this.nombre = nombreLibro;
    this.cant = cantPaginas;
    this.tapa = new Tapa();  
    this.paginas = new Pagina[cantPaginas];
    this.pagAct = -1;
  }
  
  boolean pasarPagina(int act) {
    if(act < this.paginas.length){
      return true;
    }
    else {
      return false;
    }
  }

  boolean volverPagina(int act) {
    if(act > 0){
      return true;
    }
    else {
      return false;
    }
  }
  
  void cargarTapa() {
    this.tapa.contenido = loadImage("tapa.jpeg");
    this.tapa.contenido.resize(400,640);
  }
  
  void cargarPaginas() {
    PImage img;
    for (int i = 0; i < this.paginas.length; i++){
      img = loadImage("pagina"+i+".jpeg");
      this.paginas[i] = new Pagina(img, i);
      this.paginas[i].contenido.resize(400, 640);
    }
  }
  
  void inicializarLibro() {
    imageMode(CENTER);
    textAlign(CENTER);
    textSize(20);
    libro.cargarTapa();
    libro.cargarPaginas();
  }
}
