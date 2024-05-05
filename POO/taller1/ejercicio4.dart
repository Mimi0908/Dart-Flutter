void main(){
  var autor = Persona('J.K.', 'Rowling');
  var fechaEdicion = Fecha(26, 6, 1997);
  var harryPotter = Libro('Harry Potter y la piedra filosofal', autor.entregar(), '9788498387071', 256, 1, 'Salamandra', 'Londres', 'Reino Unido', fechaEdicion.entregar());
  
  harryPotter.mostrarInformacion();
}

class Libro{
  String titulo;
  String autor;
  String isbn;
  int paginas;
  int edicion;
  String editorial;
  String ciudad;
  String pais;
  String fechaEdicion;

  Libro(this.titulo, this.autor,this.isbn, this.paginas, this.edicion, this.editorial, this.ciudad, this.pais, this.fechaEdicion);

  void mostrarInformacion() {
    print('Título: $titulo');
    print('Autor: $autor');
    print('ISBN: $isbn');
    print('Páginas: $paginas');
    print('Edición: $edicion');
    print('Editorial: $editorial');
    print('Lugar: $ciudad, $pais');
    print('Fecha de edición: $fechaEdicion');
  }
}

class Persona{
  String nombre;
  String apellido;

  Persona(this.nombre, this.apellido);

  String entregar(){
    return '$nombre $apellido';
  }
}

class Fecha{
    int dia;
    int mes;
    int anio;

    Fecha(this.dia, this.mes, this.anio);

    String entregar(){
      return '$dia/$mes/$anio';
    }
}

