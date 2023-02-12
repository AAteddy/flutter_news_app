class Constants {
  static String TOP_HEADLINES_URL =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=28463e4260e24672ad1f981f9c02e1fb";

  static String headlinesFor(String keyword) {
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=28463e4260e24672ad1f981f9c02e1fb";
  }
}
