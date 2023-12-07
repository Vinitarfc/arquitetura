import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'asd123',
      qtdePortas: 2,
      valor: 1000.00,
    );
    expect(carroEntity, isNotNull);
  });

  test('Espero que a qtde de portas seja dois', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'asd123',
      qtdePortas: 2,
      valor: 1000.00,
    );
    expect(carroEntity.qtdePortas, 2);
  });

  test('Espero que o valorReal seja 2 mil', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'asd123',
      qtdePortas: 2,
      valor: 1000.00,
    );
    var resultadoEsperado = 2000.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valorReal seja 0', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'asd123',
      qtdePortas: 0,
      valor: 1000.00,
    );
    var resultadoEsperado = 0.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valor seja 30000.00', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'asd123',
      qtdePortas: 2,
      valor: 15000.00,
    );

    var resultadoEsperado = 30000.00;
    carroEntity.setLogica();
    expect(carroEntity.valor, resultadoEsperado);
  });
}
