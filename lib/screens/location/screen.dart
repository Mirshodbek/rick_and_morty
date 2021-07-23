import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';

class LocationScreen extends StatelessWidget {
  static const String id = '/location';

  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    final location = Location.fromMap(arguments as Map<String, dynamic>);
    return BlocProvider<LocationBloc>(
      create: (context) =>
          LocationBloc()..add(LocationEvent.initial(location: location)),
      child: BlocConsumer<LocationBloc, LocationState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.map(
            data: (_data) {
              final locationData = _data.location;
              return StatusBarColor(
                statusColor: Colors.transparent,
                child: Scaffold(
                  extendBodyBehindAppBar: true,
                  appBar: BackToScreen( () => Navigator.of(context).pop()),
                  body: Stack(
                    children: [
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Image.asset(
                          locationData!.imageLocation!,
                          fit: BoxFit.cover,
                          height: 300.0,
                        ),
                      ),
                      Positioned(
                        top: 250.0,
                        left: 0.0,
                        right: 0.0,
                        bottom: 0.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          child: Container(
                            color: AppColor.blue800AndWhite(context),
                            child: SingleChildScrollView(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 34.0,
                                  ),
                                  Text(
                                    locationData.nameLocation!,
                                    style: AppTextTheme.locationNameTextStyle.copyWith(
                                      color: AppColor.whiteAndBlue800(context),
                                    ),
                                  ),
                                  Text(
                                    locationData.statusLocation!,
                                    style: AppTextTheme.locationSmallTextStyle,
                                  ),
                                  const SizedBox(
                                    height: 32.0,
                                  ),
                                  Text(
                                    Variables.infoLocation,
                                    style: AppTextTheme.locationInfoTextStyle.copyWith(
                                      color: AppColor.whiteAndBlue800(context),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 36.0,
                                  ),
                                  BlocConsumer<PersonagesBloc, PersonagesState>(
                                    listener: (context, state) {
                                      //  TODO: implement listener
                                    },
                                    builder: (context, state) {
                                      return state.maybeMap(
                                        loading: (_) => Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                        data: (_data) {
                                          return Column(
                                            children: _data.characterList!
                                                .map((character) {
                                              return ListItemPersonage(
                                                personage: character,
                                                onTap: () =>
                                                    _onTap(context, character),
                                              );
                                            }).toList(),
                                          );
                                        },
                                        orElse: () => Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            initial: (_) => SizedBox.shrink(),
            loading: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            error: (_) => Center(
              child: Text("Ошибка"),
            ),
          );
        },
      ),
    );
  }

  Future<Object?> _onTap(BuildContext context, Personage personage) =>
      Navigator?.pushNamed<String>(
        context,
        PersonageScreen.id,
        arguments: personage.toMap(personage),
      );
}
