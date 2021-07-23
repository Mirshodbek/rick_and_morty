import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../exports.dart';

class EpisodeScreen extends StatelessWidget {
  static const String id = '/episode';

  const EpisodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    final episode = Episode.fromMap(arguments as Map<String, dynamic>);
    return BlocProvider(
      create: (context) =>
          EpisodeBloc()..add(EpisodeEvent.initial(episode: episode)),
      child: BlocConsumer<EpisodeBloc, EpisodeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.map(
            data: (_data) {
              final episodeData = _data.episode;
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
                          episodeData!.imageEpisode,
                          fit: BoxFit.cover,
                          height: 300.0,
                        ),
                      ),
                      InfoEpisode(episodeData: episodeData),
                      Positioned(
                        top: 195.0,
                        left: (MediaQuery.of(context).size.width / 2.0) - 55.0,
                        child: TextButton(
                          onPressed: () {},
                          child: CircleAvatar(
                            radius: 50.0,
                            child: SvgPicture.asset(AppIcons.play),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            initial: (_) => Container(),
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
}
