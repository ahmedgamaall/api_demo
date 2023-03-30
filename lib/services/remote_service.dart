import 'package:api_demo/models/post_model.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      return postFromJson(response.body);
    }
    return null;
  }
}
