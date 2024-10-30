import 'package:basic_flutter/core/constants/constants.dart';
import 'package:http/http.dart';

class MovieApiService {
  // Future<List<MovieModel>> getUpcomingMovieList({required apiKey}) async {
  //   Response response = await get(Uri.parse("$movieUrl?apiKey=$apiKey"));

  //   if (response.statusCode == 200) {
  //     MovieUpcomingModel movieUpcomingModel =
  //         MovieUpcomingModel.fromJson(jsonDecode(response.body));

  //     return movieUpcomingModel.results ?? [];
  //   } else {
  //     return [];
  //   }
  // }
  Future<Response> getUpcomingList(
      {required String apiKey, String? parameters}) async {
    Response response =
        await get(Uri.parse("$movieUrl/upcoming?api_key=$apiKey&$parameters"));
    return response;
  }
}
