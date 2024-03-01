main() {
  var nome; //Não foi inicializada, portanto é DINAMIC
  nome = "John"; //DINAMIC aceita qualquer tipo
  nome = 3;

  var sobrenome = "Milk"; //sobrenome é String
  sobrenome = "Milk Coffee";
  //sobrenome = 8; //erro

  dynamic varDinamica = 1;
  varDinamica = "String"; //ok
  varDinamica = Object(); //ok

  /*
  Constantes podem ser inicializada com outras variaveis constantes
   */
  const int a = 5;
  const int b = a * 5;

  /*
  Para variaveis aceitar null, basta por ? pós o tipo
   */
  //int x1 = null; //erro
  int? x2 = null; //ok

  /*
  String
   */
  String str1 = 'Aspas simples';
  String str2 = "Aspas duplas";

  String concat = str1 + " ou " + str2;

  String multiplas = ''' Funciona
  com quebra
  de linhha
  ''';

  String raw =
      r"Com um r (de raw) na frente, caracteres como \n, \t. Não funcionam";

  /*
  Interpolação de variaveis e expressão em string
   */
  String str3 = 'SOMA';
  int y = 7;
  String interpolacao =
      'O valor da ${str3.toLowerCase()} entre $y e 10 é ${y + 10}';
}
