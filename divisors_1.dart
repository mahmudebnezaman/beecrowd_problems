import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  if (n % 2 == 0) {
    print(1);
    for (int i = 2; i<=n; i+=2){
      print(i);
    }
  } else {
    for (int i = 1; i<=n; i+=2){
      print(i);
    }
  }
}