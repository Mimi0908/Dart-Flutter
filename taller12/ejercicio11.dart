void main(){
  Map <String, Map <String, dynamic>> persona={
  '01234567L': {'nombre': 'Luis González', 'email':
  'luisgonzalez@mail.com', 'teléfono': '656343576', 'descuento':12.5}, 
  '71476342J': {'nombre': 'Macarena Ramírez', 'email':
  'macarena@mail.com', 'teléfono': '692839321', 'descuento':8.0}, 
  '63823376M': {'nombre': 'Juan José Martínez', 'email':
  'juanjo@mail.com', 'teléfono': '664888233', 'descuento': 5.2},
  '98376547F': {'nombre': 'Carmen Sánchez', 'email':
  'carmen@mail.com', 'teléfono': '667677855', 'descuento':
  15.7}};
  persona.forEach((key, value) { 
    print('NIF: $key');
    value.forEach((campo, valor) {
      print('$campo: $valor');
    });
    print('');
  });
}