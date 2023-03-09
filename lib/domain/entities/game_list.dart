import 'dart:core';

import 'package:equatable/equatable.dart';

class GameListEntity extends Equatable {
  late int count;
  late String next;
  late String previous;
  late List<ResultsEntity> results;

  GameListEntity({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  @override
  List<Object> get props => [count, next, previous, results];
}

class ResultsEntity {
  late int id;
  late String name;
  late String released;
  late String backgroundImage;
  late double rating;
  late List<PlatformEntity> platforms;
  late List<GenresEntity> genres;
  late List<TagsEntity> tags;

  ResultsEntity({
    required this.id,
    required this.name,
    required this.released,
    required this.backgroundImage,
    required this.rating,
    required this.platforms,
    required this.genres,
    required this.tags,
  });

  @override
  List<Object> get props => [
        id,
        name,
        released,
        backgroundImage,
        rating,
        platforms,
        genres,
        tags,
      ];
}

class PlatformEntity {
  final int id;
  final String name;

  PlatformEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [
        id,
        name,
      ];
}

class GenresEntity {
  final int id;
  final String name;

  GenresEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [
        id,
        name,
      ];
}

class TagsEntity {
  final int id;
  final String name;

  TagsEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [
        id,
        name,
      ];
}
