enum PlaceOfBirth { EMPTY, PLACE_OF_BIRTH, C_137, PURPLE, FLUFFY }

final placeOfBirthValues = EnumValues({
  "Измерение C-137": PlaceOfBirth.C_137,
  "Постапокалиптическое измерение": PlaceOfBirth.EMPTY,
  "Птичий мир": PlaceOfBirth.FLUFFY,
  "Земля": PlaceOfBirth.PLACE_OF_BIRTH,
  "Громфлом": PlaceOfBirth.PURPLE
});

class EnumValues<T> {
  late final Map<String, T> map;
  late final Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap.isEmpty) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
