main() {
  String estado = 'APROVADO';

  switch (estado) {
    case 'APROVADO':
      print('Parabéns');
      break;
    case 'IFA':
      print('O IFA será a 7 dias');
      break;
    case 'REPROVADO':
      print('Tente novamente');
      break;
    default:
      print('Desconhecido');
      break;
  }
}
