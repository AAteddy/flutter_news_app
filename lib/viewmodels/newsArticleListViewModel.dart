// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/newsArticle.dart';
import 'package:flutter_news_app/services/webservice.dart';
import 'package:flutter_news_app/viewmodels/newsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel> articles = <NewsArticleViewModel>[];

  void populateTopHeadlines() async {
    List<NewsArticle> newsArticles = await Webservice().fetchTopHeadlines();
    // ignore: unnecessary_this
    this.articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();
    notifyListeners();
  }
}
