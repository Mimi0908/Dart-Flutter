void main(){
  var pelicula1 = Multimedia('El Padrino', 'Francis Ford Coppola', 'avi', "1:75:50");
  var pelicula2 = Multimedia('El Padrino', 'Francis Ford Coppola', 'mp4', "1:75:50");
  var cancion = Multimedia('Bohemian Rhapsody', 'Queen', 'mp3', "6:02");

  print('Película 1:');
  print(pelicula1.toString());
  print('Autor de la película 1: ${pelicula1.getAutor()}');
  print('duracion de la pelicula 1: ${pelicula1.getDuracion()}');

  print('Película 2:');
  print(pelicula2.toString());
  print('¿Las películas 1 y 2 son iguales?: ${pelicula1.equals(pelicula2)}');
  print('formato pelicula 2: ${pelicula2.getFormato()}');

  print('Canción:');
  print(cancion.toString());
}

class Multimedia{
  String titulo;
  String autor;
  String formato;
  String duracion;

  Multimedia(this.titulo, this.autor, this.formato, this.duracion);

  String getTitulo(){
    return titulo;
  }

  String getAutor(){
    return autor;
  }

  String getFormato(){
    return formato;
  }

  String getDuracion(){
    return duracion;
  }

  String toString(){
    return "titulo: $titulo, autor: $autor, formato: $formato, duracion: $duracion";
  }

  bool equals(Multimedia otro){
    if(titulo==otro.getTitulo() && autor==otro.getAutor()){
      return true;
    }else{
      return false;
    }
  }
}