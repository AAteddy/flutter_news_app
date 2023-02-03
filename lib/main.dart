import 'package:flutter/material.dart';
import 'package:flutter_news_app/pages/newsList.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fresh News",
      home: NewsList(),
    );
  }
}
