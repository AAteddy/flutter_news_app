// ignore_for_file: must_be_immutable, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_news_app/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  void initState() {
    super.initState();

    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .populateTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
        appBar: AppBar(title: const Text("Top News")),
        body: ListView.builder(
          itemCount: vm.articles.length,
          itemBuilder: (context, index) {
            final article = vm.articles[index];

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
        ));
  }
}
