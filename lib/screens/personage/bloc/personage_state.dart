part of 'personage_bloc.dart';

@freezed
abstract class PersonageState with _$PersonageState {
  const factory PersonageState.data({
    required final Personage? character,
  }) = _DataPersonageState;

  const factory PersonageState.initial() = _InitialPersonageState;

  const factory PersonageState.loading() = _LoadingPersonageState;

  const factory PersonageState.error() = _ErrorPersonageState;
}
