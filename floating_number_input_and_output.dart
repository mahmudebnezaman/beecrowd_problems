import 'dart:io';

void main () {

  List<double> n = stdin.readLineSync()!.split(' ').map((p)=> double.parse(p)).toList();
  List<double> m = stdin.readLineSync()!.split(' ').map((p)=> double.parse(p)).toList();

  print('A = ${n[0].toStringAsFixed(6)}, B = ${n[1].toStringAsFixed(6)}\nC = ${m[0].toStringAsFixed(6)}, D = ${m[1].toStringAsFixed(6)}');
  for (int i = 1; i<4; i++){
    print('A = ${n[0].toStringAsFixed(i)}, B = ${n[1].toStringAsFixed(i)}\nC = ${m[0].toStringAsFixed(i)}, D = ${m[1].toStringAsFixed(i)}');
  }

  print('A = ${getScientificString(n[0])}, B = ${getScientificString(n[1])}\nC = ${getScientificString(m[0])}, D = ${getScientificString(n[1])}');

  print('A = ${n[0].toStringAsFixed(0)}, B = ${n[1].toStringAsFixed(0)}\nC = ${m[0].toStringAsFixed(0)}, D = ${m[1].toStringAsFixed(0)}');

}

String getScientificString (double num){

  String exp = num.toStringAsExponential(3);

  return exp.replaceAllMapped(
    RegExp(r'e([+-]?)(\d{1})$'),
        (match) => 'E${match[1]}0${match[2]}',
  );
}