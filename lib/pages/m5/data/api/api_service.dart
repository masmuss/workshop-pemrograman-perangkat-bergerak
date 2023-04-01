import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/article.dart';

class ApiService {
  static final String _baseUrl = 'http://newsapi.org/v2';
  static final String _apiKey = '83c22c8abf2d456eba06800fd91f019a';
  static final String _category = 'business';
  static final String _country = 'us';

  Future<ArticleResult> topHeadlines() async {
    final response = await http.get(Uri.parse("$_baseUrl/top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    if (response.statusCode == 200) {
      return ArticleResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
