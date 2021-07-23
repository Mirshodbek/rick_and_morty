import 'package:flutter/cupertino.dart';

@immutable
class Episode {
  final String imageEpisode;
  final String series;
  final String nameSeries;
  final DateTime date;

  Episode({
    required this.imageEpisode,
    required this.nameSeries,
    required this.series,
    required this.date,
  });

  factory Episode.fromMap(Map<String, dynamic> json) {
    return Episode(
      imageEpisode: json["imageEpisode"],
      series: json["series"],
      nameSeries: json["nameSeries"],
      date: DateTime.parse(json["date"]),
    );
  }

  Map<String, dynamic> toMap(Episode episode) {
    return {
      "imageEpisode": episode.imageEpisode,
      "series": episode.series,
      "nameSeries": episode.nameSeries,
      "date": episode.date.toIso8601String(),
    };
  }
}
