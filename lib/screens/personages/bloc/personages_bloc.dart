
import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/network/models/characters.dart';
import 'package:rick_and_morty/data/repository.dart';
import '../../../exports.dart';

part 'personages_bloc.freezed.dart';
part 'personages_event.dart';
part 'personages_state.dart';

class PersonagesBloc extends Bloc<PersonagesEvent, PersonagesState> {
  final _repository = Repository();
  List<CharactersModel> charactersList = <CharactersModel>[];
  PersonagesBloc() : super(PersonagesState.initial()){
   add(PersonagesEvent.initial());
  }
  bool isGrid = false;

  @override
  Stream<PersonagesState> mapEventToState(
    PersonagesEvent event,
  ) async* {
    yield* event.map(
      initial: _mapInitialPersonagesEvent,
      selectedView: _mapSelectedViewPersonagesEvent,
    );
  }

  Stream<PersonagesState> _mapInitialPersonagesEvent(
      _InitialPersonagesEvent value) async* {
    yield PersonagesState.loading();
    try {
      charactersList = await _repository.getCharacters();
    } catch (ex) {}
    yield PersonagesState.data(
      isGrid: isGrid,
      characterList: RepositoryLocal.personagesList,
    );
  }

  Stream<PersonagesState> _mapSelectedViewPersonagesEvent(
      _SelectedViewPersonagesEvent event) async* {
    yield PersonagesState.loading();
    isGrid = !event.isGrid!;
    yield PersonagesState.data(
      isGrid: isGrid,
      characterList: RepositoryLocal.personagesList,
    );
  }
}
