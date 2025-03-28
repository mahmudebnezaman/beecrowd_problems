import 'dart:io';

void main() {
  bool isPrintable = false;
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) break;

    if (input.contains('<body>')){
      isPrintable = true;
      continue;
    } else if (input.contains('</body>')){
      isPrintable = false;
    }

    if(isPrintable){
      print(input);
    }
  }
}