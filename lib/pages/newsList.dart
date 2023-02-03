// ignore_for_file: must_be_immutable, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_news_app/viewmodels/newsArticleListViewModel.dart';

class NewsList extends StatelessWidget {
  NewsArticleListViewModel _newsArticleListViewModel =
      NewsArticleListViewModel();

  NewsList({super.key}) {
    _newsArticleListViewModel.populateTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Top News")),
        body: const Text("Hello World"));
  }
}
