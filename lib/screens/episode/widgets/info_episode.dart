import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../exports.dart';

class InfoEpisode extends StatelessWidget {
  final Episode episodeData;
  const InfoEpisode({Key? key,  required this.episodeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80.0,
                ),
                Text(
                  episodeData.nameSeries,
                  style: AppTextTheme.episodeNameTextStyle.copyWith(
                    color: AppColor.whiteAndBlue800(context),
                  ),
                ),
                Text(
                  episodeData.series,
                  style: AppTextTheme.seriesTextStyle,
                ),
                const SizedBox(
                  height: 36.0,
                ),
                Text(
                  Variables.infoEpisode,
                  style: AppTextTheme.episodeInfoTextStyle.copyWith(
                    color: AppColor.whiteAndBlue800(context),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Премьера",
                        style: AppTextTheme.episodePremTextStyle,
                      ),
                      Text(
                        DateFormat.yMMMd().format(episodeData.date),
                        style: AppTextTheme.episodeDateTextStyle.copyWith(
                          color: AppColor.whiteAndBlue800(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 72.0,
                  color: AppColor.grey,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Персонажи",
                    style: AppTextTheme.episodePersonageTextStyle.copyWith(
                      color: AppColor.whiteAndBlue800(context),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                BlocConsumer<PersonagesBloc, PersonagesState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return state.map(
                      data: (_dataPersonage) {
                        return Column(
                          children: _dataPersonage.characterList!.map(
                            (personage) {
                              return ListItemPersonage(
                                personage: personage,
                                onTap: () => _onTap(context, personage),
                              );
                            },
                          ).toList(),
                        );
                      },
                      initial: (_) => SizedBox.shrink(),
                      loading: (_) => Center(
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
    );
  }
  Future<Object?> _onTap(BuildContext context, Personage personage) =>
      Navigator?.pushNamed<String>(
        context,
        PersonageScreen.id,
        arguments: personage.toMap(personage),
      );
}
