import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return BlocProvider<EpisodesBloc>(
      create: (_) => EpisodesBloc(),
      child: EpisodesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EpisodesBloc()..add(EpisodesEvent.initial()),
      child: BlocConsumer<EpisodesBloc, EpisodesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.map(
            data: (_data) => DefaultTabController(
              length: _data.seasonsList!.length,
              child: Scaffold(
                  backgroundColor: AppColor.blue800AndWhite(context),
                  appBar: AppBar(
                    elevation: 0.0,
                    toolbarHeight: 120.0,
                    title: SearchField(
                      hintText: "Найти эпизод",
                    ),
                    automaticallyImplyLeading: false,
                    backgroundColor: AppColor.blue800AndWhite(context),
                    bottom: TabBar(
                      labelColor: AppColor.whiteAndBlue800(context),
                      unselectedLabelColor: AppColor.grey,
                      indicatorColor: AppColor.whiteAndBlue800(context),
                      isScrollable: true,
                      tabs: _data.seasonsList!.map((season) {
                        return Tab(
                          child: Text(season),
                        );
                      }).toList(),
                    ),
                  ),
                  body: TabBarView(
                    children: _data.seasonsList!.map((season) {
                      return Container(
                        padding: const EdgeInsets.only(
                            right: 12.0, left: 12.0, top: 24.0),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            final episode = _data.episodesList![index];
                            return ListItemEpisode(
                              onTap: () => _onTap(context, episode),
                              episode: episode,
                            );
                          },
                          itemCount: _data.episodesList!.length,
                        ),
                      );
                    }).toList(),
                  )),
            ),
            initial: (_) => SizedBox.shrink(),
            loading: (_) => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
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
