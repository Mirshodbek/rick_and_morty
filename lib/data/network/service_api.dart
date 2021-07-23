import 'package:dio/dio.dart';

import 'dio_settings.dart';
import 'models/characters.dart';

class ServiceApi {
  late DioSettings _dioSettings;
  late Dio _dio;

  /// И мап для запроса
  late Map<String, dynamic> _request;

  static ServiceApi _instance = new ServiceApi.internal();

  factory ServiceApi() => _instance;

  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  Future<CharactersModel> getCharacters() async {
    final response = await _dio.get(
      "characters/getAll",
    );
    return charactersModelFromJson(response.toString());
  }
}
