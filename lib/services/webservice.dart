import 'dart:convert';
import 'package:flutter_news_app/models/newsArticle.dart';
import 'package:http/http.dart' as http;

class Webservice {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=28463e4260e24672ad1f981f9c02e1fb";

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      throw Exception("Failed to get top news");
    }
  }
}
