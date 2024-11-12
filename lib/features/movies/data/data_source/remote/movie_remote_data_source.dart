import 'package:basic_flutter/core/constants/constants.dart';
import 'package:http/http.dart';

abstract class MovieRemoteDataSource {
  Future<Response> getUpcomingList(
      {required String apiKey, String? parameters});
}

class TMBDDataSourceImpl extends MovieRemoteDataSource {
  @override
  Future<Response> getUpcomingList(
      {required String apiKey, String? parameters}) async {
    Response response =
        await get(Uri.parse("$movieUrl/upcoming?api_key=$apiKey&$parameters"));
    return response;
  }
}
