import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return BlocProvider<LocationsBloc>(
      create: (_) => LocationsBloc(),
      child: LocationsScreen(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationsBloc, LocationsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(
            child: CircularProgressIndicator(),
          ),
          data: (_data) => Scaffold(
            backgroundColor: AppColor.blue800AndWhite(context),
            appBar: AppBar(
              elevation: 0.0,
              toolbarHeight: 120.0,
              title: SearchField(
                hintText: "Найти локацию",
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60.0),
                child: ListCount(
                  visible: false,
                  listCount: "Всего локаций: ${_data.locationsList!.length}",
                ),
              ),
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.blue800AndWhite(context),
            ),

            body: Container(
              padding:
                  const EdgeInsets.only(right: 12.0, left: 12.0, top: 24.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final location = _data.locationsList![index];
                  return Items(
                    location: location,
                    onTap: () => _onTap(context, location),
                  );
                },
                itemCount: _data.locationsList!.length,
              ),
            ),
          ),
          orElse: () => Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }


  Future<Object?> _onTap(BuildContext context, Location location) =>
      Navigator.pushNamed(
        context,
        LocationScreen.id,
        arguments: location.toMap(location),
      );
}
