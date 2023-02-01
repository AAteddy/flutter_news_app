import 'package:http/http.dart' as http;

class Webservice {
  void fetchTopHeadlines() {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=28463e4260e24672ad1f981f9c02e1fb";
  }
}
