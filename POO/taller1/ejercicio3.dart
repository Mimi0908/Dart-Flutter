void main(){

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
}