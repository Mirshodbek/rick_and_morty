import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../exports.dart';

part 'personage_bloc.freezed.dart';

part 'personage_event.dart';
part 'personage_state.dart';

class PersonageBloc extends Bloc<PersonageEvent, PersonageState> {
  PersonageBloc() : super(PersonageState.initial());

  @override
  Stream<PersonageState> mapEventToState(
    PersonageEvent event,
  ) async* {
    yield* event.map(initial: _mapInitialPersonageState);
  }

  Stream<PersonageState> _mapInitialPersonageState(_InitialPersonageEvent event) async*{
    yield PersonageState.loading();
    yield PersonageState.data(character: event.personage);
  }
}
