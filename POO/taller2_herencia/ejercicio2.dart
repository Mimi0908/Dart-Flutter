void main(){
  var empleado1 = Empleado('Juan', 30, 'Gerente de Proyecto', 50000.0);
  var programador1 = Programador('Pedro', 25, 60000.0, ['Java', 'Python', 'JavaScript']);

  print('Información del empleado:');
  empleado1.mostrarInformacion();

  print('Información del programador:');
  programador1.mostrarInformacion();

}
class Programador extends Empleado{
  List<String> lenguajes;

  Programador(String nombre, int edad, double salario, this.lenguajes): super(nombre, edad, 'Programador', salario);

  void mostrarInformacion(){
    super.mostrarInformacion();
    print('lenguajes: ${lenguajes.join(', ')}');
  }

}

class Empleado{
  String nombre;
  int edad;
  String cargo;
  double salario;
  Empleado(this.nombre, this.edad, this.cargo, this.salario);
  void mostrarInformacion() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Cargo: $cargo');
    print('Salario: $salario');
  }
}