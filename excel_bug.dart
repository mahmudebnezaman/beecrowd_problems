import 'dart:io';

void main() {
  const maxColumn = "XFD";

  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) break;

    if (input.length > 3 || (input.length == 3 && input.compareTo(maxColumn) > 0)) {
      print('Essa coluna nao existe Tobias!');
      continue;
    }

    int value = 0;
    for (int j = 0; j < input.length; j++) {
      value = value * 26 + (input.codeUnitAt(j) - 64); // 'A'=65 → 1
    }

    if (value > 16384) {
      print('Essa coluna nao existe Tobias!');
    } else {
      print(value);
    }
  }
}