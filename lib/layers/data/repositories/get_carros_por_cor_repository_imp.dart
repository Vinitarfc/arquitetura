import 'package:arquitetura/layers/data/dto/carro_dto.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    //simulação da chamada de API que retorna um JSON
    var json = {
      'placa': 'ABC123',
      'quantidadeDePortas': 2,
      'valorFinal': 1000.00,
    };
    return CarroDto.fromMap(json);
  }
}
