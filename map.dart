/**
 * O que é MAP
 * - coleção do dart que faz associação chave e valor
 * - tanto chave como o valor podem adotar qualquer tipo
 * - a chave precisa ser unica
 */
main() {
  var mapExempleType1 = <int, String>{};
  Map<String, int> mapExempleType2 = {};

  var m1 = {
    1: 'Leide',
    2: 'Sandra',
    3: 'Thais',
  };

  var m2 = {
    'Carla': 1995,
    'Vivan': 1996,
    'Mirian': 1997,
  };

  Map<int, String> m3 = {
    1: 'Laila',
    2: 'Milene',
    3: 'Bia',
  };

  var alunos = [
    {
      'bt301682x': {
        'nome': 'Lana',
        'situação': 'Matriculado',
        'ira': 8.6,
        'curso': {
          'nome': 'Web Desing',
          'campus': 'Boituva',
        }
      },
      'bt301683x': {
        'nome': 'Carla',
        'situação': 'Matriculado',
        'ira': 8.6,
        'curso': {
          'nome': 'Web Desing',
          'campus': 'Boituva',
        }
      },
    }
  ];

  //print('$mapExempleType2 \n$mapExempleType1 \n$m1 \n$m2 \n$m3, \n$alunos');

  alunos.forEach((element) {
    print(element.keys);
  });
}
