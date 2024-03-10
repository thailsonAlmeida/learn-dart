main() {
  //receber string
  String inputName = 'Macaco';

  //inverter string
  var nameToCompare = inputName.toLowerCase().split('').reversed.join();

  if (inputName.toLowerCase() == nameToCompare.toLowerCase()) {
    print("A String é Polindromo");
  } else {
    print("A String não é Polindromo");
  }
}
