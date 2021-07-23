import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';
class PersonagesScreen extends StatelessWidget {
  const PersonagesScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return BlocProvider<PersonagesBloc>(
      create: (_) => PersonagesBloc(),
      child: PersonagesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PersonagesBloc, PersonagesState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(
            child: CircularProgressIndicator(
              color: AppColor.green,
            ),
          ),
          data: (_data) => Scaffold(
            backgroundColor: AppColor.blue800AndWhite(context),
            appBar: AppBar(
              elevation: 0.0,
              toolbarHeight: 120.0,
              title: SearchField(
                hintText: "Найти персонажа",
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60.0),
                child: ListCount(
                  visible: true,
                  listCount: "Всего персонажей: ${_data.characterList!.length}",
                ),
              ),
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.blue800AndWhite(context),
            ),
            body: Container(
              padding:
                  const EdgeInsets.only(right: 12.0, left: 12.0, top: 24.0),
              child: Column(
                children: [
                  Expanded(
                    child: _data.isGrid!
                        ? _gridView(_data.characterList)!
                        : _listView(_data.characterList)!,
                  ),
                ],
              ),
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }

  Widget? _gridView(List<Personage>? _data) => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final personage = _data![index];
          return InkWell(
            onTap: () => _onTap(context, personage),
            child: GridItemWidget(
              personage: personage,
            ),
          );
        },
        itemCount: _data!.length,
      );

  Widget? _listView(List<Personage>? _data) => ListView.builder(
        itemBuilder: (context, index) {
          final personage = _data![index];
          return ListItemPersonage(
            onTap: () => _onTap(context, personage),
            personage: personage,
          );
        },
        itemCount: _data!.length,
      );

  Future<Object?> _onTap(BuildContext context, Personage personage) =>
      Navigator?.pushNamed<String>(
        context,
        PersonageScreen.id,
        arguments: personage.toMap(personage),
      );
}
