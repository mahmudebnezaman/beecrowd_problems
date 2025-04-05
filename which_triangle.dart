import 'dart:io';

void main (){
  List<int> n = stdin.readLineSync()!.split(' ').map((p)=> int.parse(p)).toList();
  
  int a = n[0], b = n[1], c = n[2];

  if (a+b <= c || b+c <= a || a+c <= b){
    print('Invalido');
  } else {
    if (a == b && b == c){
      print('Valido-Equilatero');
    } else if ( (a == b && a != c) || (a == c && a != b) || (c == b && a != c)){
      print('Valido-Isoceles');
    } else {
      print ('Valido-Escaleno');
    }
    if (c/b == 90 || a/c == 90 || b/a == 90){
      print('Retangulo: S');
    } else {
      print('Retangulo: N');
    }
  }
}