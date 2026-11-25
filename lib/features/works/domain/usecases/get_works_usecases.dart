import '../entities/work_entity.dart';
import '../repositories/work_repository.dart';

class GetWorksUsecases {
  final WorkRepository repository;
  GetWorksUsecases({required this.repository});

  Future<List<WorkEntity>> call() {
    return repository.getWorks();
  }
}
