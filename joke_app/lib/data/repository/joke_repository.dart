import 'package:http/http.dart' as http;
import 'package:joke_app/data/model/joke_model.dart';

class JokeRepository {
  final String _baseURL = 'https://v2.jokeapi.dev/joke/Any';

  Future<JokeModel> getJoke() async {
    final response = await http.get(Uri.parse(_baseURL));

    if (response.statusCode == 200) {
      return jokeModelFromJson(response.body);
    } else {
      throw Exception('Failed to load joke');
    }
  }
}
