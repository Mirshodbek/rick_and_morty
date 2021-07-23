part of 'episode_bloc.dart';

@freezed
abstract class EpisodeEvent with _$EpisodeEvent {
  const factory EpisodeEvent.initial({required Episode episode}) = _InitialEpisodeEvent;


}