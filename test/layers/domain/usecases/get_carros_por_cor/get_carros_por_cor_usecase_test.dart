import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carro_por_cor_usecase_imp.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC123', qtdePortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'qwe', qtdePortas: 2, valor: 2000.00);
  }
}

main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(),
    );
    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de quatro portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(),
    );
    var result = useCase('vermelho');

    expect(result.qtdePortas, 4);
  });

  test('Deve retornar um carro de qualquer cor exeto vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(),
    );
    var result = useCase('verde');

    expect(result.qtdePortas, 2);
  });
}
