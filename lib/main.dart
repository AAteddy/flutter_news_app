import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fresh News",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latest News'),
        ),
        body: const Text('Latest News will be displayed here...'),
      ),
    );
  }
}
