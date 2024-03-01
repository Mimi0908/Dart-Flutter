import 'dart:io';

void main() {
  print("Escribe una palabra ");
  String palabra = stdin.readLineSync()!.toLowerCase();
  Map<String, int> conteoVocales = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
  };

  for (int i = 0; i < palabra.length; i++) {
    String letra = palabra[i];
    if (conteoVocales.containsKey(letra)) {
      conteoVocales[letra] = conteoVocales[letra]! + 1;
    }
  }

  conteoVocales.forEach((vocal, conteo) {
    print('La vocal $vocal aparece $conteo veces.');
  });
}
