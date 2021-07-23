import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/exports.dart';
import 'package:intl/intl.dart';

class ListItemEpisode extends StatelessWidget {
  final VoidCallback onTap;
  final Episode episode;

  const ListItemEpisode({
    Key? key,
    required this.episode,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          episode.imageEpisode,
          fit: BoxFit.cover,
          width: 74,
          height: 74,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            episode.series,
            style: AppTextTheme.seriesTextStyle,
          ),
          Text(
            episode.nameSeries,
            overflow: TextOverflow.ellipsis,
            style: AppTextTheme.seriesNameTextStyle.copyWith(
              color: AppColor.whiteAndBlue800(context),
            ),
          ),
        ],
      ),
      subtitle: Text(
        DateFormat.yMMMd().format(episode.date),
        style: AppTextTheme.episodeSmallTextStyle.copyWith(
          letterSpacing: 0.25,
        ),
      ),
      trailing: SvgPicture.asset(AppIcons.arrowRightIos),
    );
  }
}
