void main() {
  int suma = 0;
  Map<String, int> asignaturas = {'Matemáticas': 6, 'Física': 4, 'Química': 5};
  asignaturas.forEach((key, value) {
    print("$key tiene $value");
    suma += value;
  });
  print("Cantidad de cretidos en total: $suma");
}
