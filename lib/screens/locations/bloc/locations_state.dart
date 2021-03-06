part of 'locations_bloc.dart';

@freezed
abstract class LocationsState with _$LocationsState{
  const factory LocationsState.data({
    required final List<Location>? locationsList,
  }) = _DataLocationsState;

  const factory LocationsState.initial() = _InitialLocationsState;

  const factory LocationsState.loading() = _LoadingLocationsStatee;
}

