import 'dart:io';

List<Map<String, dynamic>> cadastros = [];
cadastroPessoas() {
  bool condicao = true;
  while (condicao) {
    String texto = stdin.readLineSync();
    if (texto == "sair") {
      print("saindo...");
      condicao = false;
    } else if (texto == "cadastro") {
      cadastrar();
    } else if (texto == "imprimir") {
      print(cadastros);
    } else {
      print("Esse comando não existe");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};
  print("digite seu nome");
  String nome = stdin.readLineSync();
  cadastro["nome"] = nome;

  print("digite sua idade");
  String idade = stdin.readLineSync();
  cadastro["idade"] = idade;

  print("digite sua cidade'");
  String cidade = stdin.readLineSync();
  cadastro["cidade"] = cidade;

  print("digite sua cidade'");
  String estado = stdin.readLineSync();
  cadastro["estado"] = estado;

  cadastros.add(cadastro);
}
