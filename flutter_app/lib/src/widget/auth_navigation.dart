import 'package:flutter/material.dart';

class AuthNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Login'),
        Text('Signup')
      ],
    );
  }
}