import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/exports.dart';

part 'episode_bloc.freezed.dart';

part 'episode_event.dart';

part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodeBloc() : super(EpisodeState.initial());

  @override
  Stream<EpisodeState> mapEventToState(
    EpisodeEvent event,
  ) async* {
    yield* event.map(initial: _mapInitialEpisodeState);
  }

  Stream<EpisodeState> _mapInitialEpisodeState(
      _InitialEpisodeEvent event) async* {
    yield EpisodeState.loading();
    yield EpisodeState.data(episode: event.episode);
  }
}
