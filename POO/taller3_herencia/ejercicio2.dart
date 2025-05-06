import 'dart:math';
class Docente {
  String cedula;
  String nombre;
  String seccion;
  String area;

  int cuantas_Asignaturas_Imparto = 0;

  //cantidad de asignaturas que imparte el profesor
  Docente(this.cedula, this.nombre, this.seccion, this.area);

  //Función que va a ser llamada dentro de asignatura
  void sumar_Asignaturas() {
    cuantas_Asignaturas_Imparto++;
  }
}

class Aula {
  String nombre_Aula;
  String ubicacion;
  int capacidad;
  Aula(this.nombre_Aula, this.ubicacion, this.capacidad, Docente docente) {
    docente.sumar_Asignaturas();
  }
}

class Aula_Teoria extends Aula {
  String tipoPupitre;
  Aula_Teoria(String nombre_Aula, String ubicacion, int capacidad,
      this.tipoPupitre, Docente docente)
      : super(nombre_Aula, ubicacion, capacidad, docente);
}

class Aula_Practica extends Aula {
  bool altavoces;
  bool camara;
  Aula_Practica(String nombre_Aula, String ubicacion, int capacidad,
      this.altavoces, this.camara, Docente docente)
      : super(nombre_Aula, ubicacion, capacidad, docente);
}

class Departamento {
  String nombre;

  Departamento(this.nombre);
}

class Asignatura {
  String nombre;
  int creditos;
  bool esTeorica;

  Asignatura(
    this.nombre,
    this.creditos,
    this.esTeorica,
  );
}

class Curso {
  int numero;
  List<Asignatura> asignaturas;

  Curso(this.numero, this.asignaturas);
}

class Dictar_Clase {
  String diaPrimero = "";
  String diaSegundo = "";
  String diaTercero = "";

  Dictar_Clase(this.diaPrimero, this.diaSegundo, this.diaTercero);

  void que_Dias_Dare_Clase() {
    print("voy a dar clase los dias $diaPrimero $diaSegundo $diaTercero");
  }
}

// Función para generar horarios
void generarHorarios(List<Curso> cursos, List<Docente> docentes,
    List<Aula> aulas, Dictar_Clase dictar_clase, String hora) {
  String hora_Dar_Clase = "";
  hora_Dar_Clase = hora;

  List<String> horatest = ["12:30" , "1:30"];

  Map<String, String> dias_De_la_Semana = {};
  //  Dia  -  Hora
  Random random = new Random();
  int num = random.nextInt(horatest.length);
  //hacer un condicional que recorra una lista y a su vez verifique si la hora es disponible.
  // do {
    
  // } while ();

  dias_De_la_Semana[dictar_clase.diaPrimero] = hora;

  // Lógica para generar los horarios
  // (Aquí puedes implementar la lógica necesaria para asignar días y horas de clase a las asignaturas)
}

// Función para consultar horarios por parte de los alumnos
void consultarHorarios() {
  // Lógica para consultar horarios
  // (Aquí puedes implementar la lógica necesaria para que los alumnos consulten sus horarios)
}

void main() {
  // Ejemplo de uso

  // Crear docentes
  var docente1 =
      Docente("123456789", "Juan Perez", "Informática", "Programación");
  var docente2 = Docente("987654321", "Maria Gomez", "Matemáticas", "Álgebra");

  // Crear asignaturas
  var asignatura1 = Asignatura("Programación en Dart", 3, true); //9 horas
  var asignatura2 = Asignatura("Álgebra Lineal", 4, true); //12 horas

  // Crear aulas
  var aula1 = Aula_Teoria("Aula 101", "Edificio A", 30, "abatible", docente1);
  // var aula2 = Aula("Laboratorio 201", "Edificio B", 20, false, tieneVideoconferencia: true);//esta será aula practica

  // Crear cursos
  var curso1 = Curso(1, [asignatura1]);
  var curso2 = Curso(2, [asignatura2]);

  //si el docente imparte 1 o 2 materias, debe estar en el sistema

  // Generar horarios
  // generarHorarios([curso1, curso2], [docente1, docente2], [aula1, aula2]);

  // Consultar horarios
  consultarHorarios();
}