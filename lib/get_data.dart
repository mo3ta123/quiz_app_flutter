import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>?> getQuestions(int amount) async {
  try {
    final response =
        await http.get(Uri.parse('https://opentdb.com/api.php?amount=$amount'));
    final json = jsonDecode(response.body);
    final results = json['results'];
    return results;
  } catch (error) {
    return null;
  }
}
