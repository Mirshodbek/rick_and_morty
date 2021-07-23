part of 'episode_bloc.dart';

@freezed
abstract class EpisodeState with _$EpisodeState {
  const factory EpisodeState.data({
    required final Episode? episode,
  }) = _DataEpisodeState;

  const factory EpisodeState.initial() = _InitialEpisodeState;

  const factory EpisodeState.loading() = _LoadingEpisodeState;

  const factory EpisodeState.error() = _ErrorEpisodeState;
}
