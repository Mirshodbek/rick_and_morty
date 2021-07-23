import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';

class Episodes extends StatelessWidget {
  const Episodes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Эпизоды",
                style: AppTextTheme.episodeTextStyle.copyWith(
                  color: AppColor.whiteAndBlue800(context),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  "Все эпизоды",
                  style: AppTextTheme.episodeSmallTextStyle,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          BlocConsumer<EpisodesBloc, EpisodesState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return state.map(
                data: (_data) {
                  return Column(
                    children: _data.episodesList!.map((episode) {
                      return ListItemEpisode(
                        episode: episode,
                        onTap: () =>_onTap(context, episode),
                      );
                    }).toList(),
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
    );
  }

  Future<Object?> _onTap(BuildContext context, Episode episode) =>
      Navigator.pushNamed(
        context,
        EpisodeScreen.id,
        arguments: episode.toMap(episode),
      );
}
