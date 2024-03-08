import 'dart:io';

void main() {
  print("Escribe una palabra o frase");
  String cadena = stdin.readLineSync()!.toLowerCase();
  
  Map<String, int> conteoVocales = contarVocales(cadena);
  
  conteoVocales.forEach((vocal, conteo) {
    print('La vocal $vocal aparece $conteo veces.');
  });
}

Map<String,int> contarVocales(String cadena){
  Map<String, int> conteoVocales = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
  };
  for (int i = 0; i < cadena.length; i++) {
    String letra = cadena[i];
    if (conteoVocales.containsKey(letra)) {
      conteoVocales[letra] = conteoVocales[letra]! + 1;
    }
  }
  return conteoVocales;
}
