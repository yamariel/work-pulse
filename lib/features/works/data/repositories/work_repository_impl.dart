import '../../domain/entities/work_entity.dart';
import '../../domain/repositories/work_repository.dart';
import '../datasources/work_remote_data_source.dart';

class WorkRepositoryImpl extends WorkRepository {
  final WorkRemoteDataSource remoteDataSource;
  WorkRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<WorkEntity>> getWorks() async {
    final remoteData = await remoteDataSource.getWorks();
    return remoteData;
  }
}
