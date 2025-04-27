void main() {
  List<int> numbers = List.generate(16, (index) => index);

  print('-' * 39);

  print('| decimal   |  octal  |  Hexadecimal  |');


  print('-' * 39);

  for (int number in numbers) {
    String decimal = number.toString().padLeft(7);
    String octal = number.toRadixString(8).padLeft(5);
    String hex = number.toRadixString(16).toUpperCase().padLeft(8);

    print('|${centerText(decimal, 11)}|${centerText(octal, 10)}|${centerText(hex, 14)}|');

  }

  print('-' * 39);
}

String centerText(String text, int width) {
  int totalPadding = width - text.length;
  int leftPadding = totalPadding ~/ 2;
  int rightPadding = totalPadding - leftPadding;
  return ' ' * leftPadding + text + ' ' * rightPadding;
}
