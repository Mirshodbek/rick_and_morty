import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/exports.dart';

part 'episodes_bloc.freezed.dart';

part 'episodes_event.dart';

part 'episodes_state.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  EpisodesBloc() : super(EpisodesState.initial()){
    add(EpisodesEvent.initial());
  }

  @override
  Stream<EpisodesState> mapEventToState(
    EpisodesEvent event,
  ) async* {
    yield* event.map(initial: _mapInitialEpisodesEvent);
  }

  Stream<EpisodesState> _mapInitialEpisodesEvent(
      _InitialEpisodesEvent event) async* {
    yield EpisodesState.loading();
    yield EpisodesState.data(
      seasonsList: RepositoryLocal.seasonsList,
      episodesList: RepositoryLocal.episodesList,
    );
  }
}
