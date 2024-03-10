/**
 * O que é importante saber sobre set?
 * - contem valores unicos
 * - são delimitados por {}
 * 
 */
main() {
  var setA = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  var setB = {3, 4, 5, 6, 7, 8, 9, 10};
  var setC = {...setA, ...setB};

  print(setC);
}
