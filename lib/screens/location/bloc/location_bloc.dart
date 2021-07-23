import 'dart:async';
import '../../../exports.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_bloc.freezed.dart';

part 'location_event.dart';

part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationState.initial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(initial: _mapInitialLocationState);
  }

  Stream<LocationState> _mapInitialLocationState(
      _InitialLocationEvent event) async* {
    yield LocationState.loading();
    yield LocationState.data(location: event.location);
  }
}
