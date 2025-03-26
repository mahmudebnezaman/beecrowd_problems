import 'dart:io';

void main() {
  List<int> n = stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
  List<String> titans = stdin.readLineSync()!.split('');
  List<int> size = stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  int walls = 1;
  int height = n[1];

  for (String i in titans) {
    int titanSize = 0;

    if (i == 'P') {
      titanSize = size[0];
    } else if (i == 'M') {
      titanSize = size[1];
    } else if (i == 'G') {
      titanSize = size[2];
    }

    if (height >= titanSize) {
      height -= titanSize;
    } else {
      height = n[1] - titanSize;
      ++walls;
    }
  }

  print(walls);
}
