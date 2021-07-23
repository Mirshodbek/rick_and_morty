import 'package:rick_and_morty/exports.dart';

class RepositoryLocal {
  static final List<Personage>? personagesList = [
    Personage(
      imagePersonage: AppImages.rickSanchez,
      namePersonage: "Рик Cанчез",
      gender: "Мужской",
      status: "Живой",
      race: "Человек",
      alive: true,
    ),
    Personage(
      imagePersonage: AppImages.directorAgency,
      namePersonage: "Директор Агентства",
      gender: "Мужской",
      status: "Живой",
      race: "Человек",
      alive: true,
    ),
    Personage(
      imagePersonage: AppImages.mortySmith,
      namePersonage: "Морти Смит",
      status: "Живой",
      gender: "Мужской",
      race: "Человек",
      alive: true,
    ),
    Personage(
      imagePersonage: AppImages.sammerSmith,
      namePersonage: "Саммер Смит",
      status: "Живой",
      gender: "Женский",
      race: "Человек",
      alive: true,
    ),
    Personage(
      imagePersonage: AppImages.albertEynshteyn,
      namePersonage: "Альберт Эйнштейн",
      status: "Мертвый",
      gender: "Мужской",
      race: "Человек",
      alive: false,
    ),
    Personage(
      imagePersonage: AppImages.alanRaylz,
      namePersonage: "Алан Райлс",
      status: "Мертвый",
      gender: "Мужской",
      race: "Человек",
      alive: false,
    ),
  ];

  static final List<Episode> episodesList = [
    Episode(
      imageEpisode: AppImages.episode1,
      date: DateTime.utc(2013, 12, 2),
      nameSeries: "Пилот",
      series: "Серия 1",
    ),
    Episode(
      imageEpisode: AppImages.episode2,
      date: DateTime.utc(2013, 12, 9),
      nameSeries: "Пёс-газонокосильщик",
      series: "Серия 2",
    ),
    Episode(
      imageEpisode: AppImages.episode3,
      date: DateTime.utc(2013, 12, 16),
      nameSeries: "Анатомический парк",
      series: "Серия 3",
    ),
    Episode(
      nameSeries: "М. Найт Шьямал-Иноплане...",
      imageEpisode: AppImages.episode4,
      date: DateTime.utc(2014, 1, 13),
      series: "Серия 4",
    ),
    Episode(
      nameSeries: "Мисикс и разрушение",
      imageEpisode: AppImages.episode5,
      date: DateTime.utc(2014, 1, 20),
      series: "Серия 5",
    ),
    Episode(
      nameSeries: "Напиток Рика №9",
      imageEpisode: AppImages.episode6,
      date: DateTime.utc(2014, 1, 20),
      series: "Серия 6",
    ),
    Episode(
      nameSeries: "Воспитание Газорпазорпа",
      imageEpisode: AppImages.episode7,
      date: DateTime.utc(2014, 1, 20),
      series: "Серия 7",
    ),
  ];


  static final List<Location>? locationsList = [
    Location(
      nameLocation: "Земля C-137",
      imageLocation: AppImages.earth,
      statusLocation: "Мир + Измерение С-137",
    ),
    Location(
      nameLocation: "Анатомический парк",
      imageLocation: AppImages.park,
      statusLocation: "Мир + Измерение С-137",
    ),
    Location(
      nameLocation: "Земля C-137",
      imageLocation: AppImages.earth,
      statusLocation: "Мир + Измерение С-137",
    ),
  ];

 static final seasonsList = ["Сезон 1","Сезон 2","Сезон 3","Сезон 4"];
}
