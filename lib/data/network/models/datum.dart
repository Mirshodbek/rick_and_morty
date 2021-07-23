import 'enums.dart';
import 'episodes.dart';

class Datum {
  Datum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.status,
    required this.about,
    required this.gender,
    required this.race,
    required this.imageName,
    required this.placeOfBirthId,
    this.placeOfBirth,
    required this.episodes,
  });

  late final String id;
  late final String firstName;
  late final String? lastName;
  late final String fullName;
  late final int status;
  late final String about;
  late final int gender;
  late final String race;
  late final String imageName;
  late final String? placeOfBirthId;
  late final PlaceOfBirth? placeOfBirth;
  late final List<Episode> episodes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        fullName: json["fullName"],
        status: json["status"],
        about: json["about"],
        gender: json["gender"],
        race: json["race"],
        imageName: json["imageName"],
        placeOfBirthId:
            json["placeOfBirthId"] == null ? null : json["placeOfBirthId"],
        placeOfBirth: json["placeOfBirth"] == null
            ? null
            : placeOfBirthValues.map[json["placeOfBirth"]],
        episodes: List<Episode>.from(
            json["episodes"].map((x) => Episode.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName == null ? null : lastName,
        "fullName": fullName,
        "status": status,
        "about": about,
        "gender": gender,
        "race": race,
        "imageName": imageName,
        "placeOfBirthId": placeOfBirthId == null ? null : placeOfBirthId,
        "placeOfBirth": placeOfBirth == null
            ? null
            : placeOfBirthValues.reverse[placeOfBirth],
        "episodes": List<dynamic>.from(episodes.map((x) => x.toJson())),
      };
}
