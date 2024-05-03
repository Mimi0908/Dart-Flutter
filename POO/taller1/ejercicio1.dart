import 'dart:io';

void main(){
  var cuenta1= new Cuenta("123456", "9876542", 1000000, 25);
  int op=0;
  do {
    print("Escoja una opcion: ");
    print("1. ingresar");
    print("2. retirar");
    print("3. Mostrar");
    print("4.salir");
    op = int.parse(stdin.readLineSync().toString());
    switch(op){
      case 1:
        print("cantidad a ingresar: ");
        double saldo= double.parse(stdin.readLineSync().toString());
        cuenta1.actualizacionSaldo(saldo);
      break;
      case 2:
        print("Cantidad a retirar: ");
        double saldo= double.parse(stdin.readLineSync().toString());
        cuenta1.retirar(saldo);
      break;
      case 3:
        cuenta1.mostrar();
      break;
      case 4:
        print("Cerrando");
      break;
      default:
      
    }
  } while (op!=4);
}
class Cuenta{
  String nCuenta;
  String identificacion;
  double saldoActual;
  double interesAnual;

  Cuenta(this.nCuenta,this.identificacion, this.saldoActual, this.interesAnual ){
    this.nCuenta=nCuenta;
    this.identificacion= identificacion;
    this.saldoActual=saldoActual;
    this.interesAnual=interesAnual;
  } 

  void actualizacionSaldo(double saldo){
    double porcentaje= interesAnual/100;
    saldoActual= (saldoActual+saldo)-((saldoActual+saldo)*(porcentaje/365));
    print("Saldo ingresado con exito");
  }

  void retirar(double saldoRetirar){
    if(saldoRetirar<saldoActual){
      saldoActual=saldoActual-saldoRetirar;
      print("Retiro con exito");
    }
    else{
      print("Saldo insuficiente");
    }
  }
  void mostrar(){
    print("Numero Cuenta: $nCuenta");
    print("Identificación dueño: $identificacion");
    print("Saldo Actual: $saldoActual");
    print("interes actual al año: $interesAnual %");
  }
}