import 'package:flutter/material.dart';

import 'src/pages/login_page.dart';
import 'src/pages/welcome_page.dart';
import 'src/pages/questionary_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMOK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage()
    );
  }
}
