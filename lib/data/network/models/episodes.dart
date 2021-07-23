class Episode {
  Episode({
    this.id,
    this.name,
  });

  late final String? id;
  late final String? name;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
