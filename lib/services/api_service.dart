import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/show.dart';

class ApiService {
  Future<List<Show>> fetchShows([String query = 'all']) async {
    final url = 'https://api.tvmaze.com/search/shows?q=$query';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => Show.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load shows');
    }
  }
}
