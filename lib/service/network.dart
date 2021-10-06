import 'package:dio/dio.dart';
import 'package:tutorial_bagdat/model/player.dart';

class DioClient {
  final Dio _dio = Dio();
  final _baseUrl = "https://www.balldontlie.io/api/v1";

  Future<Player?> getPlayer() async {
    Player? player;
    try {
      Response playerData = await _dio.get(_baseUrl + '/players');
      // Prints the raw data returned by the server
      print('User Info: ${playerData.data}');

      player = Player.fromJson(playerData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return player;
  }
}
