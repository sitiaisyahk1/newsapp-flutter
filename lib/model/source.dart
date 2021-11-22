class Source {
  Source({
    this.id,
    this.name,
  });

  //memberikan nullable jika ada data json yang null
  String? id;
  String? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"],
    name: json["name"],
  );

}