import 'dart:io';
void main(){
  var cancion= new Cancion("Como te atreves a volver", "morat");
  int op=0;
   do {
    print("Escoja una opcion: ");
    print("1. imprimir titulo");
    print("2. imprimitr autor");
    print("3. poner nombre");
    print("4. poner autor");
    print("5. salir");
    op = int.parse(stdin.readLineSync().toString());
    switch(op){
      case 1:
          cancion.imprimircancion();
      break;
      case 2:
          cancion.imprimirAutor();
      break;
      case 3:
          print("nombre Cancion: ");
          String nombre= stdin.readLineSync().toString();
          cancion.ponTitulo(nombre);
      break;
      case 4:
          print("nombre autor: ");
          String nombre= stdin.readLineSync().toString();
          cancion.ponAutor(nombre);
      break;
      case 5:
        print("Cerrando");
      break;
      default:
      
    }
  } while (op!=4);
}

class Cancion{
  String titulo;
  String autor;
  Cancion(this.titulo, this.autor){
    this.titulo=titulo;
    this.autor=autor;
  }
  void imprimirAutor(){
    print("Nombre autor cancion: $autor");
  }
  void imprimircancion(){
    print("Nombre cancion: $titulo");
  }
  void ponTitulo(String nombre){
    titulo=nombre;
  }
  void ponAutor(String nombre){
    autor=nombre;
  }
}