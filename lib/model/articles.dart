import 'dart:convert';

import 'package:newsapp/model/source.dart';

class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    source: Source.fromJson(json["source"]),
    author: json["author"] ?? "null",
    title: json["title"] == null ? null : json["title"] ?? "null",
    description: json["description"] ?? "null",
    url: json["url"] ?? "null",
    urlToImage: json["urlToImage"] ?? "https://cdn.hellovillam.com/HelloVillam/images/w370/villa-sunlake-2-4-oda-8-kisi-71404.jpg",
    publishedAt:(json["publishedAt"]) ?? "null",
    content: json["content"] ?? "null",
  );

}
