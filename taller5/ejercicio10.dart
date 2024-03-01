void main(){
  dynamic op2;
  int x=1980;
  dynamic op;
  double a=3.5;
  double b=5;
  while(a<=b){
    op=(a*15)/100;
    a+=op;
    op2=(b*7)/100;
    b+=op2;
    x+=1;
  }
  print("En el año $x, la ciudad A tiene mas poblacion que la ciudad B");
}