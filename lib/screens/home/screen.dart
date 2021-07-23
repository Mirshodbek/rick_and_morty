import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';

class MainScreen extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return StatusBarColor(
      statusColor: Colors.transparent,
      child: Builder(
        builder: (splash) {
          final state = splash.select((HomeCubit value) => value.state);
          if (state == HomeState.initialSplash() ||
              state == HomeState.continueSplash() ||
              state == HomeState.lastSplash()) {
            return SplashWidget(state: state);
          }
          return state.maybeWhen(
            homeScreen: (_index) => Scaffold(
              backgroundColor: AppColor.blue800AndWhite(splash),
              body: IndexedStack(
                index: _index,
                children: [
                  PersonagesScreen.create(context),
                  LocationsScreen.create(context),
                  EpisodesScreen.create(context),
                  SettingsScreen.create(context),
                ],
              ),
              bottomNavigationBar: BottomNavigation(
                tabIndex: _index,
              ),
            ),
            orElse: () => Container(
              child: Center(
                child: Text(
                  "Что-то пошло не так ;)",
                  style: TextStyle(
                    fontFamily: "RobotoMedium",
                    color: AppColor.green,
                    fontSize: 50.0,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
