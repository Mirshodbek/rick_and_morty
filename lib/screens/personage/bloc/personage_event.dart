part of 'personage_bloc.dart';

@freezed
abstract class PersonageEvent with _$PersonageEvent {
  const factory PersonageEvent.initial({required Personage personage}) = _InitialPersonageEvent;


}