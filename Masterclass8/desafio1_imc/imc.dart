import 'dart:io';

double calcularImc(double peso, double altura){
    return peso / (altura * altura);
}

resultadoImc(String nome, double peso, double altura){
  double imc = calcularImc(peso, altura);
  var resultado = "$nome ";

  if (imc < 18.5) {
    resultado += "você está abaixo do peso";
  } else if (imc >= 18.5 && imc < 25) {
    resultado +=  "você está no peso normal";
  } else if (imc >= 25 && imc < 30) {
    resultado += "você está no sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    resultado += "você está no nível de obesidade grau 1";
  } else if (imc >= 35 && imc < 40) {
    resultado += "você está no nível de obesidade grau 2";
  } else {
    resultado += "você está no nível de obesidade grau 3";
  }

  return resultado;
}

void main(){
  print('Digite seu nome:');
  final String nome = stdin.readLineSync();
  print('Nome: $nome \n');

  print('Digite seu peso:');
  final String pesoString = stdin.readLineSync();
  print('Peso: $pesoString \n');

  print('Digite sua altura:');
  final String alturaString = stdin.readLineSync();
  print('Altura: $alturaString \n');

  double peso = double.parse(pesoString);
  double altura = double.parse(alturaString);

  String imcResultado = resultadoImc(nome, peso, altura);
  print(imcResultado);
}