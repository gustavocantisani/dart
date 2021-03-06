import 'dart:io';

main() {
  calculoImc();
}

calculoImc() {
  print("=== Digite seu peso ===");
  String textPeso = stdin.readLineSync() ?? "";
  int peso = int.parse(textPeso);

  print("=== Digite sua altura ===");
  String textAltura = stdin.readLineSync() ?? "";
  double altura = double.parse(textAltura);

  double calculo = calcImcExpr(peso, altura);
  imprimirResultado(calculo);
}

double calcImcExpr(int peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(double calculo) {
  print(calculo);

  if (calculo < 18.5) {
    print("Abaixo do peso");
  } else if (calculo > 18.5 && calculo < 24.9) {
    print("Peso normal");
  } else if (calculo > 25 && calculo < 29.9) {
    print("Sobrepeso");
  } else if (calculo > 30 && calculo < 34.9) {
    print("Obesidade grau 1");
  } else if (calculo > 35 && calculo < 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
