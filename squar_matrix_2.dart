import 'dart:io';

void main() {
  while(true){
    int flag = int.parse(stdin.readLineSync()!);
    if (flag == 0){
      return;
    }
    for (int i = 0; i < flag; i++){
      bool isPositive = false;
      int value = i+1;
      for (int j = 0; j<flag ; j++){
        stdout.write("$value${j == flag-1 ? '\n' : '   '}");
        if(value == 1){
          isPositive = true;
        }
        if(isPositive){
          value++;
        }else {
          value--;
        }
      }
      print('');
    }
  }
}