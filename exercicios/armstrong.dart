import 'dart:math';

main() {
  //recebe o int
  int isArmstrong = 153;
  List nIntables = [];
  List result = [0];

  //soma a unidade do int
  String isArmstrongString = isArmstrong.toString();

  for (var i = 0; i < isArmstrongString.length; i++) {
    var isArmstrongInt = int.parse(isArmstrongString[i]);
    nIntables.add(pow(isArmstrongInt, 3));
  }

  for (var i = 0; i < nIntables.length; i++) {
    result[0] = result[0] + nIntables[i];
  }

  //verifica se é armstrong
  if (isArmstrong == result[0]) {
    print("Inteiro é Armstrong");
  } else {
    print("Inteiro não é Armstrong");
  }

  print(isArmstrongString);
  //print(nIntables);
  //print(result);
}
