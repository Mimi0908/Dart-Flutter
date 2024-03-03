import 'dart:io';

void main() {
  Map<int, double> facturas = {};
  int op = 1;
  double cobro = 0;
  int quitar=0;
  double pendiente = 0;
  bool existente = false;
  do {
    print(" 0. salir\n 1. agregar nueva factura\n 2. pagar una factura");
    op = int.parse(stdin.readLineSync().toString());
    switch (op) {
      case 1:
        print("digite el numero de la factura a registrar");
        int numero = int.parse(stdin.readLineSync().toString());
        facturas.keys.forEach((element) {
          if (numero == element) {
            existente = true;
          }
        });
        if (existente == false) {
          print("Digite el valor de la factura");
          double valor = double.parse(stdin.readLineSync().toString());
          facturas.addAll({numero: valor});
        } else {
          print("Esta factura ya existe, vuelvalo a intentar");
        }
        break;
      case 2:
        print("digite el numero de la factura a pagar");
        int numero = int.parse(stdin.readLineSync().toString());
        facturas.keys.forEach((element) {
          if (numero == element) {
            existente = true;
          }
        });
        if (existente == false) {
          print("Esta factura no existe, vuelvalo a intentar");
        } else {
          facturas.forEach((key, value) {
            if (numero == key) {
              cobro += value;
              quitar=key;
            }
          });
          facturas.remove(quitar);
        }
        break;
      case 0:
        facturas.values.forEach((value) {
          pendiente += value;
        });
        print("Cantidad cobrada: $cobro");
        print("Cantidad pendiente a cobrar: $pendiente");
        break;
    }
  } while (op != 0);
}
