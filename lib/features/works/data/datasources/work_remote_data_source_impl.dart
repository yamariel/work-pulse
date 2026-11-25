import 'package:dio/dio.dart';

import '../models/work_model.dart';
import 'work_remote_data_source.dart';

class WorkRemoteDataSourceImpl implements WorkRemoteDataSource {
  final Dio dio;
  WorkRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<WorkModel>> getWorks() async {
    final response = await dio.get<List<dynamic>>(
      '/active-jb',
      queryParameters: {
        'time_frame': '7d',
        'description_format': 'text',
        'limit': 10,
        'offset': 0,
        'location': 'France',
        'title': 'Data Engineer',
        'has_salary': true,
      },
    );
    final data = response.data;
    if (data == null) {
      throw const FormatException('La réponse de l’API est vide.');
    }

    return data.map((work) {
      if (work is! Map) {
        throw const FormatException('Une annonce reçue de l’API est invalide.');
      }

      return WorkModel.fromJson(Map<String, dynamic>.from(work));
    }).toList();
  }
}
