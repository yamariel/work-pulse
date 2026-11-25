import '../entities/work_entity.dart';

abstract class WorkRepository {
  Future<List<WorkEntity>> getWorks();
}