import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> num = [];
  for (int i = 0; i<n; i++){
    int flag = int.parse(stdin.readLineSync()!);
    if(flag <=0){
      flag = 1;
    }
    num.add(flag);
  }
  for (int i = 0; i<n; i++){
    print('X[$i] = ${num[i]}');
  }
}