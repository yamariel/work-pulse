import '../models/work_model.dart';

abstract class WorkRemoteDataSource {
  Future<List<WorkModel>> getWorks();
}