import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/exports.dart';

part 'locations_bloc.freezed.dart';

part 'locations_event.dart';

part 'locations_state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc() : super(LocationsState.initial()){
    add(LocationsEvent.initial());
  }

  @override
  Stream<LocationsState> mapEventToState(
    LocationsEvent event,
  ) async* {
    yield* event.map(initial: _mapInitialLocationsEvent);
  }

  Stream<LocationsState> _mapInitialLocationsEvent(
      _InitialLocationsEvent value) async* {
    yield LocationsState.loading();
    try {} catch (ex) {}
    yield LocationsState.data(locationsList: RepositoryLocal.locationsList);
  }
}
