void main(){
  for(int i=1;i<=10;i++){
    String mensaje= cuadrado(i);
    print(mensaje);
  }
}
String cuadrado(int valor){
  int total;
  total=valor*valor;
  return 'cuadrado de $valor es $total';
}