class Urls {

  static const String baseUrl = 'https://api.rawg.io/api';
  static const String apiKey = 'd27e3eca13b24157a28c5c173d7f03f7';

  static String gameList(num page) => '$baseUrl/games?key=$apiKey&page=$page&page_size=20';
}