main() {
  var name = 'John Smith';

  for (var word in name.runes) {
    print(String.fromCharCode(word));
  }
}
