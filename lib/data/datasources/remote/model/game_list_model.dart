import 'dart:convert';
import 'dart:core';


GameListModel currentWeatherModelFromJson(String str) =>
    GameListModel.fromJson(json.decode(str));

String currentWeatherModelToJson(GameListModel data) =>
    json.encode(data.toJson());

class GameListModel {
  late int count;
  late String next;
  late String previous;
  late List<Results> results;

  GameListModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  GameListModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  late int id;
  late String name;
  late String released;
  late String backgroundImage;
  late double rating;
  late List<Platform> platforms;
  late List<Genres> genres;
  late List<Tags> tags;

  Results({
    required this.id,
    required this.name,
    required this.released,
    required this.backgroundImage,
    required this.rating,
    required this.platforms,
    required this.genres,
    required this.tags,
  });

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    name = json['name'];
    released = json['released'];

    backgroundImage = json['background_image'];
    rating = json['rating'];

    if (json['platforms'] != null) {
      platforms = <Platform>[];
      json['platforms'].forEach((v) {
        platforms.add(Platform.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres.add(Genres.fromJson(v));
      });
    }

    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags.add(Tags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['released'] = this.released;
    data['background_image'] = this.backgroundImage;
    data['rating'] = this.rating;

    if (this.platforms != null) {
      data['platforms'] = this.platforms.map((v) => v.toJson()).toList();
    }
    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v.toJson()).toList();
    }

    if (this.tags != null) {
      data['tags'] = this.tags.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Platform {
  final int id;
  final String name;

  Platform({
    required this.id,
    required this.name,
  });

  factory Platform.fromJson(Map<String, dynamic> json) => Platform(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Genres {
  final int id;
  final String name;

  Genres({
    required this.id,
    required this.name,
  });

  factory Genres.fromJson(Map<String, dynamic> json) => Genres(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Tags {
  final int id;
  final String name;

  Tags({
    required this.id,
    required this.name,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
