import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';

class PersonageScreen extends StatelessWidget {
  static const String id = '/personage';

  const PersonageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    final personage = Personage.fromMap(arguments as Map<String, dynamic>);
    return BlocProvider(
      create: (context) =>
          PersonageBloc()..add(PersonageEvent.initial(personage: personage)),
      child: BlocConsumer<PersonageBloc, PersonageState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.map(
            data: (_data) => StatusBarColor(
              statusColor: Colors.transparent,
              child: Scaffold(
                backgroundColor: AppColor.blue800AndWhite(context),
                extendBodyBehindAppBar: true,
                appBar: BackToScreen( () => Navigator.of(context).pop()),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      ImagePersonage(
                        personage: _data.character,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      InfoPersonage(
                        personage: personage,
                      ),
                      Divider(
                        color: AppColor.blue600AndWhite200(context),
                        thickness: 2.0,
                        height: 72.0,
                      ),
                      Episodes(),
                      const SizedBox(
                        height: 12.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            initial: (_) => Container(),
            loading: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            error: (_) => Center(
              child: Text("Ошибка!"),
            ),
          );
        },
      ),
    );
  }
}
