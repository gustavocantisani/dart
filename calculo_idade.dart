import 'dart:io';

main() {
  print("===== Digite uma idade =====");
  String input = stdin.readLineSync() ?? "";
  int idade = int.parse(input);

  if (idade >= 50) {
    print("Melhor idade");
  } else if (idade >= 18) {
    print("Adulto");
  } else if (idade >= 12) {
    print("Adolescente");
  } else {
    print("Criança");
  }
}
