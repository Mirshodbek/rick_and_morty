part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState{
  const factory HomeState.initialSplash() = _InitialSplashHomeState;
  const factory HomeState.continueSplash() = _ContinueSplashHomeState;
  const factory HomeState.lastSplash() = _LastSplashHomeState;
  const factory HomeState.homeScreen({required int index}) = _HomeScreenHomeState;
}


