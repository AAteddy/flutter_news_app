// ignore_for_file: must_be_immutable, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_news_app/viewmodels/newsArticleListViewModel.dart';
import 'package:flutter_news_app/widgets/newsList.dart';
import 'package:provider/provider.dart';

class NewsListPage extends StatefulWidget {
  const NewsListPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  // ignore: unused_field
  final _controller = TextEditingController();
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
        body: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              onSubmitted: (value) {
                // fetch all the news related to the search keyword
                if (value.isNotEmpty) {
                  vm.search(value);
                }
              },
              decoration: InputDecoration(
                  labelText: "Enter search term",
                  icon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _controller.clear();
                    },
                  )),
            ),
            Expanded(child: NewsList(articles: vm.articles))
          ],
        ));
  }
}
