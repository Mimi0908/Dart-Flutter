import 'dart:io';

void main() {
  dynamic t, tt;
  print("valor pasaje ");
  double vp = double.parse(stdin.readLineSync().toString());
  print("cantidad pasajeros ");
  int cp = int.parse(stdin.readLineSync().toString());
  if (cp < 300) {
    print("no hay ganancias");
    t = vp * cp;
    print("valor a entregar " + t.toString());
  } else {
    if (cp <= 500) {
      tt = (((vp * cp) * 20) / 100);
      print("chofer ganara $tt");
      t = ((vp * cp) - tt);
      print("valor a entregar " + t.toString());
    } else {
      if (cp > 500) {
        tt = (((vp * cp) * 30) / 100);
        print("chofer ganara $tt");
        t = ((vp * cp) - tt);
        print("valor a entregar " + t.toString());
      }
    }
  }
}
