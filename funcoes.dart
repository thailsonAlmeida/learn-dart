main() {
  int dobro(int x) {
    return x * 2;
  }

  void funcaoPosicional(int a, String b, double c) {
    print('$a, $b, $c');
  }

  void funcaoNomeadoNullable({int? a, String? b, double? c}) {
    print('$a, $b, $c');
  }

  void funcaoNomeadoRequired(
      {required int a, required String b, required double? c}) {
    print('$a, $b, $c');
  }

  void funcaoNomeadoDefault({int a = 0, String b = 'a', double c = 3.99}) {
    print('$a, $b, $c');
  }

  print(dobro(20));
  funcaoPosicional(3, 'Bacon', 3.69);
  funcaoNomeadoNullable();
  funcaoNomeadoRequired(a: 4, b: 'Alface', c: 3.79);
  funcaoNomeadoDefault();
}
