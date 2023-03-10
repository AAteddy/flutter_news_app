// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_news_app/viewmodels/newsArticleViewModel.dart';

class NewsList extends StatelessWidget {
  // NewsList({super.key, required this.articles,});

  final List<NewsArticleViewModel> articles;
  const NewsList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];

        return ListTile(
          leading: Container(
              width: 100.0,
              height: 100.0,
              // ignore: unnecessary_null_comparison, unrelated_type_equality_checks
              child: article.imageURL == null
                  ? Image.asset("images/news-placeholder.png")
                  : Image.network(article.imageURL)),
          title: Text(article.title),
        );
      },
    );
  }
}
