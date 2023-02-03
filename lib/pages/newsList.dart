// ignore_for_file: must_be_immutable, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_news_app/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
        appBar: AppBar(title: const Text("Top News")),
        body: ListView.builder(
          itemCount: vm.articles.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                  width: 100.0,
                  height: 100.0,
                  child: Image.network(vm.articles[index].imageURL)),
              title: Text(vm.articles[index].title),
            );
          },
        ));
  }
}
