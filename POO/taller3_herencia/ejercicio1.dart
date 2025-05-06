class Persona {
  String cedula;
  String nombres;
  int edad;
  String sexo;

  Persona(this.cedula, this.nombres, this.edad, this.sexo);
}

class Aprendiz extends Persona {
  
  Map <String, double> calificacion;
  int faltas;

  Aprendiz(String cedula, String nombres, int edad, String sexo, this.calificacion, this.faltas)
      : super(cedula, nombres, edad, sexo);
}

class Instructor extends Persona {
  String materiaAsignada;
  double disponibilidad;

  Instructor(String cedula, String nombres, int edad, String sexo, this.materiaAsignada, this.disponibilidad)
      : super(cedula, nombres, edad, sexo);
}

class Aula {
  int identificador;
  int maximoAprendices;
  String asignaturaDestinada;
  double porcentajeMinimoAsistencia =0.6;
  List<Aprendiz> aprendices;
  Instructor instructor;

  Aula(this.identificador, this.maximoAprendices, this.asignaturaDestinada,
      this.instructor, this.aprendices);

  bool puedeDarClase() {
    if (instructor.disponibilidad < 0.2 && instructor.materiaAsignada!=asignaturaDestinada) return false;

    int totalAprendices = aprendices.length;
    if(totalAprendices>maximoAprendices) return false;
    int totalPresentes = totalAprendices - aprendices.where((a) => a.faltas > 0).length;
    double porcentajePresentes = totalPresentes / totalAprendices;

    return porcentajePresentes >= porcentajeMinimoAsistencia;
  }

  int alumnosAprobados() {
    var contadorAprobados = 0;

    for (var x in aprendices){
        x.calificacion.forEach((materia, nota) {
          if(materia==asignaturaDestinada && nota>=6.0 && x.sexo=='M'){
            contadorAprobados++;
          }
        });
    }
    return contadorAprobados;
  }

  int alumnasAprobadas() {
     var contadorAprobados = 0;

    for (var x in aprendices){
        x.calificacion.forEach((materia, nota) {
          if(materia==asignaturaDestinada && nota>=6.0 && x.sexo=='F'){
            contadorAprobados++;
          }
        });
    }
    return contadorAprobados;
  }
}

void main() {
  var instructor = Instructor("123456789", "Juan Perez", 35, "M", "Programación Orientada a Objetos", 0.8);

  var aprendices = <Aprendiz>[
    Aprendiz("987654321", "Maria Lopez", 25, "F", {"Programación Orientada a Objetos": 8.5,"Estructura de datos":7.0,"Estructuras discretas":5.0}, 0),
    Aprendiz("456789123", "Carlos Garcia", 28, "M",{"Programación Orientada a Objetos": 7.3,"Estructura de datos":3.0,"Estructuras discretas":1.0}, 1),
    Aprendiz("654321987", "Ana Ramirez", 23, "F",{"Programación Orientada a Objetos": 6.8,"Estructura de datos":9.8,"Estructuras discretas":10.0}, 2),

  ];

  var aula = Aula(1, 20, "Programación Orientada a Objetos", instructor, aprendices);

  if (aula.puedeDarClase()) {
    print("Materia de la clase: ${aula.asignaturaDestinada}");
    print("Se puede dar clase en el aula ${aula.identificador}");
    print("Número de alumnos aprobados: ${aula.alumnosAprobados()}");
    print("Número de alumnas aprobadas: ${aula.alumnasAprobadas()}");
  } else {
    print("No se puede dar clase en el aula ${aula.identificador}");
  }
}
