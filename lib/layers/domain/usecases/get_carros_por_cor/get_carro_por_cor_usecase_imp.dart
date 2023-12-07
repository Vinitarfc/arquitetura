import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _carrosPorCorrepository;

  GetCarrosPorCorUseCaseImp(this._carrosPorCorrepository);

  @override
  CarroEntity call(String cor) {
    return _carrosPorCorrepository(cor);
  }
}
