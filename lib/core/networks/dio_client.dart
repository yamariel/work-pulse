import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  static const String _baseUrl =
      'https://linkedin-job-search-api.p.rapidapi.com';

  final Dio dio;

  DioClient() : dio = _createDio();

  static Dio _createDio() {
    final rapidApiKey = dotenv.env['RAPIDAPI_KEY'];
    if (rapidApiKey == null || rapidApiKey.trim().isEmpty) {
      throw ArgumentError.value(
        rapidApiKey,
        'RAPIDAPI_KEY',
        'Ajoutez une variable RAPIDAPI_KEY non vide au fichier .env et chargez-la avant de créer DioClient.',
      );
    }

    return Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Accept': 'application/json',
          'x-rapidapi-host': 'linkedin-job-search-api.p.rapidapi.com',
          'x-rapidapi-key': rapidApiKey,
        },
      ),
    );
  }
}
