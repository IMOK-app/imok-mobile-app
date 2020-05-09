import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QuestionaryPage extends StatelessWidget {
  // WebViewController _controller;

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Questionary',
        home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('IMOK - Questionary'),
          leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ),
        body: SafeArea(
          child: WebView(
            initialUrl: 'https://flutter.io',
            javascriptMode: JavascriptMode.unrestricted,
          )
        ),
      ),
    );
  }

}