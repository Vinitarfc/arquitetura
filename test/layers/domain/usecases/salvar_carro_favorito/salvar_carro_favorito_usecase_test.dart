import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/savalr_carro_favorito_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

main() {
  test('Espero que salve o carro com suvesso', () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );
    var carro = CarroEntity(placa: 'placa', qtdePortas: 2, valor: 1);
    var result = await useCase(carro);

    expect(result, true);
  });
  test(
      'Espero que não salve o carro quando o valor for menor ou igual que zero',
      () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );
    var carro = CarroEntity(placa: 'placa', qtdePortas: 2, valor: 0);
    var result = await useCase(carro);

    expect(result, false);
  });
}
