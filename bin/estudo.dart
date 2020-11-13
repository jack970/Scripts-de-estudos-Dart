import '../src/calculadora_imc.dart';
import '../src/loop.dart';

void main(List<String> arguments) {
  if (arguments[0] == 'calcular imc') {
    calculadoraImc();
  } else if (arguments[0] == 'carrinho compras') {
    carrinhoCompras();
  } else {
    print('Esse programa não existe');
  }
}
