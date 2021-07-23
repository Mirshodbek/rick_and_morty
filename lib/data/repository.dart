import 'package:rick_and_morty/data/network/service_api.dart';

import 'network/models/characters.dart';

class Repository{
  final _serviceApi = ServiceApi();

  // Получение списка персонажей
  Future<CharactersModel> getCharacters() async {
    final response = await _serviceApi.getCharacters();
    return response;
  }
}