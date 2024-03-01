main() {
  List impares = [];
  List pares = [];

  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      pares.add(i);
    } else {
      impares.add(i);
    }
  }
  print(impares);
  print(pares);

  //Quais outras maneiras de definir listas
  List<int> exemploA = [];
  var exempleB = [];
  var exempleC = <int>[];
  var exempleD = const [1, 2, 4, 5, 6, 7, 8, 9, 10];

  //É possivel fazer operações especiais
  List<int> impaV2 = [for (int i = 1; i <= 100; i += 2) i];
  List<int> parV2 = [for (int i = 2; i <= 100; i += 2) i];

  print(impaV2);
  print(parV2);

  //Spread
  var dados01 = [
    'a',
    'b',
    'c',
  ];
  var dados02 = ['d', 'e', 'f', 'g'];
  var dados03 = ['h', 'i', 'j'];

  var alfabeto = [...dados01, ...dados02, ...dados03];
  print(alfabeto);
}
