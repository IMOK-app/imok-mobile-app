import 'package:flutter/material.dart';
import 'package:flutter_app/src/core/theme/theme.dart';

import '../core/constants/prefix.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> { 
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: _screenHeight,
        width: _screenWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              ColorTheme.indigo,
              ColorTheme.lightIndigo
            ]
          )
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 160.0,
                child: Image.asset('${PREFIX}imok.png'),
              ),
              Text(
                'Bem vindo!',
                style: TextStyle(
                  color: ColorTheme.white,
                  fontSize: 26
                ),
              ),
              Divider(
                height: 20,
                thickness: 3,
                color: ColorTheme.white,
              ),
              Text(
                'Este é um aplicativo para recorrer quando tiver aquele dia díficil, aproveite as nossas ferramentas para ficar mais tranquilo. 😃',
                style: TextStyle(
                  color: ColorTheme.white,
                  fontSize: 18,
                ),  
              ),
              Text(
                'Vem com a gente?',
                style: TextStyle(
                  color: ColorTheme.white,
                  fontSize: 20
                ), 
              ),
              RaisedButton(
                child: Text(
                  'Siim 🤩',
                  style: TextStyle(
                    color: ColorTheme.black,
                    fontSize: 18
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      )
    );
  }
}