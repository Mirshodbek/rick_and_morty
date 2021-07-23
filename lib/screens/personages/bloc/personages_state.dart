part of 'personages_bloc.dart';
@freezed
abstract class PersonagesState with _$PersonagesState {
  const factory PersonagesState.data({
    required final List<Personage>? characterList,
    required final bool? isGrid,
  }) = _DataPersonagesState;

  const factory PersonagesState.initial() = _InitialPersonagesState;

  const factory PersonagesState.loading() = _LoadingPersonagesState;
}
