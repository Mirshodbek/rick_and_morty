part of 'episodes_bloc.dart';

@freezed
abstract class EpisodesState with _$EpisodesState{
  const factory EpisodesState.data({
    required final List<Episode>? episodesList,
    required final List<String>? seasonsList,
  }) = _DataEpisodesState;

  const factory EpisodesState.initial() = _InitialEpisodesState;

  const factory EpisodesState.loading() = _LoadingEpisodesState;
}