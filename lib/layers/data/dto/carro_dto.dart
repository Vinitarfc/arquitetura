// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadeDePortas;
  double valorFinal;
  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(placa: placa, qtdePortas: quantidadeDePortas, valor: valorFinal);

  Map toMap() {
    return {
      'placa': this.placa,
      'quantidadeDePortas': this.quantidadeDePortas,
      'valorFinal': this.valorFinal
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
        placa: map['placa'],
        quantidadeDePortas: map['quantidadeDePortas'],
        valorFinal: map['valorFinal']);
  }
}
