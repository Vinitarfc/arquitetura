// ignore_for_file: public_member_api_docs, sort_constructors_first
class CarroEntity {
  String placa;
  int qtdePortas;
  double valor;
  CarroEntity({
    required this.placa,
    required this.qtdePortas,
    required this.valor,
  });

  double get valorReal {
    return valor * qtdePortas;
  }

  setLogica() {
    if (valorReal > 10000.00) {
      valor * 2;
    }
  }
}
