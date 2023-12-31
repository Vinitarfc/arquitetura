import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }
}
