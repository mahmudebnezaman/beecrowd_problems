import 'dart:io';

void main(){
  String value = '';
  for (int i = int.parse(stdin.readLineSync()!); i>0; i--){
    value += stdin.readLineSync()!;
  }

  if(value.contains('G')){
    print('NAO VAI TER CORTE, VAI TER LUTA!');
  } else {
    print('The strike will stop.');
  }
}