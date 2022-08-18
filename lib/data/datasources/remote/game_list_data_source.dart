import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../../data/datasources/remote/model/game_list_model.dart';
import '../../../core/constants.dart';
import '../../../core/error/exception.dart';

abstract class GameListDataSource {
  Future<GameListModel> getGameList(num page);
}

class GameListDataSourceImpl implements GameListDataSource {
  final http.Client client = Client(); // TODO: Change to GetIt DI

  @override
  Future<GameListModel> getGameList(num page) async {
    final response = await client.get(Uri.parse(Urls.gameList(page)));
    print('GAME LIST RDS] : ${response.body}'); // TODO: remove
    if (response.statusCode == 200) {
      return GameListModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
