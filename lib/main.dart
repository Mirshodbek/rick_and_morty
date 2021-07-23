import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';
import 'package:rick_and_morty/theme/color_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(App());
}



class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (home) => HomeCubit(),
        ),
        BlocProvider<PersonagesBloc>(
          create: (personage) => PersonagesBloc(),
        ),
        BlocProvider<LocationsBloc>(
          create: (location) => LocationsBloc(),
        ),
        BlocProvider<EpisodesBloc>(
          create: (episodes) => EpisodesBloc(),
        ),
        BlocProvider(
          create: (settings) => SettingsCubit(),
        ),
      ],
      child: AdventureApp(),
    );
  }
}

class AdventureApp extends StatefulWidget {

  const AdventureApp({Key? key}) : super(key: key);

  @override
  _AdventureAppState createState() => _AdventureAppState();
}

class _AdventureAppState extends State<AdventureApp>  with WidgetsBindingObserver{
  final _appRouter = AppRouter();

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    context.read<SettingsCubit>().defaultTheme();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: _appRouter.onGenerateRoute,
        theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            },
          ),
        ),

    );
  }
}

