import 'dart:io';

List<String> produtos = [];
void carrinhoCompras() {
  bool condicao = true;

  while (condicao) {
    print("Adicione um Produto");
    String texto = stdin.readLineSync();
    if (texto == "sair") {
      print("VocÊ SAIU DO PROGRAMA!");
      condicao = false;
    } else if (texto == "remover") {
      remover();
    } else if (texto == "imprimir") {
      imprimir();
    } else {
      add(texto);
    }
  }
}

void imprimir() {
  for (int i = 0; i < produtos.length; i++) {
    print("item$i - ${produtos[i]}");
  }
}

void add(texto) {
  print("\x1B[2J\x1B[0;0H");
  produtos.add(texto);
}

void remover() {
  print("Qual item deseja remover? ");
  for (int i = 1; i < produtos.length; i++) {
    print("ITEM$i: " + produtos[i]);
  }
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
}
