class Libro {
  String nombre;
  Tapa tapa;
  int cant;
  Pagina[] paginas;

  Libro () {
  }
  
  Libro (String nombreLibro, int cantPaginas) {
    this.nombre = nombreLibro;
    this.cant = cantPaginas;
    this.tapa = new Tapa();  
    this.paginas = new Pagina[cantPaginas];    
  }
  
  boolean PasarPagina(int act) {
    if(act < this.paginas.length){
      return true;
    }
    else {
      return false;
    }
  }

  boolean VolverPagina(int act) {
    if(act > 0){
      return true;
    }
    else {
      return false;
    }
  }
  
  void CargarTapa() {
    this.tapa.contenido = loadImage("tapa.jpeg");
  }
  
  void CargarPaginas() {
    PImage img;
    for (int i = 0; i < this.paginas.length; i++){
      img = loadImage("pagina"+i+".jpeg");
      this.paginas[i] = new Pagina(img, i);
    }
  }
}
