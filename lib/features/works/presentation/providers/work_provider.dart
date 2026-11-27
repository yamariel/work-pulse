import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:work_pulse/features/works/data/repositories/work_repository_impl.dart';

import '../../../../core/networks/dio_client.dart';
import '../../data/datasources/work_remote_data_source.dart';
import '../../data/datasources/work_remote_data_source_impl.dart';
import '../../domain/entities/work_entity.dart';
import '../../domain/repositories/work_repository.dart';
import '../../domain/usecases/get_works_usecases.dart';

// Fournit le client Dio configuré pour effectuer les requêtes HTTP.
final dioClientProvider = Provider<DioClient>((ref) => DioClient());

// Fournit la source distante qui récupère les offres depuis l’API.
final workRemoteDataSourceProvider = Provider<WorkRemoteDataSource>(
  (ref) => WorkRemoteDataSourceImpl(dio: ref.watch(dioClientProvider).dio),
);

// Fournit le repository qui transmet les données d’offres au domaine.
final workRepositoryProvider = Provider<WorkRepository>(
  (ref) => WorkRepositoryImpl(
    remoteDataSource: ref.watch(workRemoteDataSourceProvider),
  ),
);

// Fournit le cas d’usage qui récupère les offres via le repository.
final getWorkUseCaseProvider = Provider<GetWorksUsecases>(
  (ref) => GetWorksUsecases(repository: ref.watch(workRepositoryProvider)),
);

// Récupère les offres et expose à l’interface les états chargement, erreur et données.
final getWorksProvider = FutureProvider<List<WorkEntity>>((ref) {
  final useCase = ref.watch(getWorkUseCaseProvider);
  return useCase.call();
});
