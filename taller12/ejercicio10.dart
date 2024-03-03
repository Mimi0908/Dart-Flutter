import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> persona = {};
  bool existente=false;

  while (true) {
    print("Menu:");
    print("1. Añadir cliente");
    print("2. Eliminar cliente");
    print("3. Mostrar cliente");
    print("4. Listar todos los clientes");
    print("5. Listar clientes preferentes");
    print("6. Terminar");

    print("Seleccione una opción: ");
    int op = int.parse(stdin.readLineSync()!);

    switch (op) {
      case 1:
        print("NIF del cliente: ");
        String nif = stdin.readLineSync().toString();
        print("Nombre del cliente: ");
        String nombre = stdin.readLineSync().toString();
        print("Dirección del cliente: ");
        String direccion = stdin.readLineSync().toString();
        print("Teléfono del cliente: ");
        String telefono = stdin.readLineSync().toString();
        print("Correo del cliente: ");
        String correo = stdin.readLineSync().toString();
        print("¿Es cliente preferente? (s/n): ");
        String esPreferente = stdin.readLineSync().toString();

        persona[nif] = {
          'Nombre': nombre,
          'Dirección': direccion,
          'Teléfono': telefono,
          'Correo': correo,
          'Preferente': esPreferente,
        };
        break;
      case 2:
        print("NIF del cliente a eliminar: ");
        String nif = stdin.readLineSync().toString();
        persona.keys.forEach((key) { 
          if(nif==key){
            existente=true;
          }
        });
        if (existente) {
          persona.remove(nif);
          print("Cliente con NIF $nif eliminado.");
        } else {
          print("Cliente con NIF $nif no encontrado.");
        }
        break;
      case 3:
        print("NIF del cliente a mostrar: ");
        String nif = stdin.readLineSync()!;
        
        persona.keys.forEach((key) { 
          if(nif==key){
            existente=true;
          }
        });
        if (existente) {
          print("Datos del cliente con NIF $nif:");
          print(persona[nif]);
        } else {
          print("Cliente con NIF $nif no encontrado.");
        }
        break;
      case 4:
        print("Lista de todos los clientes:");
        persona.forEach((nif, cliente) {
          print("NIF: $nif, Nombre: ${cliente['Nombre']}");
        });
        break;
      case 5:
        print("Lista de clientes preferentes:");
        persona.forEach((nif, cliente) {
          if (cliente['Preferente']=='s') {
            print("NIF: $nif, Nombre: ${cliente['Nombre']}");
          }
        });
        break;
      case 6:
        print("Programa terminado.");
        return;
      default:
        print("Opción inválida. Inténtelo de nuevo.");
    }
  }
}
