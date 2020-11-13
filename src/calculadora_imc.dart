import 'dart:io';

void calculadoraImc() {
  print(calculoImc());
}

String calculoImc() {
  print("=======Cálculo IMC========");

  print("Digite o peso");
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);

  print("Digite a altura");
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);

  double calc = calcImc(peso, altura);
  return imprimirResultado(calc);
}

double calcImc(int peso, double altura) {
  return peso / (altura * altura);
}

String imprimirResultado(double calc) {
  print("=====RESUTLADO======");
  if (calc < 18.5) {
    return "abaixo do peso";
  } else if (calc > 18.5 && calc < 24.9) {
    return "Peso Normal";
  } else {
    return "sobrepeso";
  }
}
