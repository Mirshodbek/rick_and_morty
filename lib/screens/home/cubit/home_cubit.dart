import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_cubit.freezed.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initialSplash()){
    splashProcess();
  }


  void splashProcess() async {
    await Future.delayed(Duration(seconds: 1));
    emit(HomeState.continueSplash());
    await Future.delayed(Duration(seconds: 4));
    emit(HomeState.lastSplash());
    await Future.delayed(Duration(seconds: 4));
    emit(HomeState.homeScreen(index: 0));
  }

  void bottomNavigation(int index) => emit(HomeState.homeScreen(index: index));
}
