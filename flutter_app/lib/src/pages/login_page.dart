import 'package:flutter/material.dart';

import '../core/constants/prefix.dart';
// import '../widget/custom_shape.dart';
import '../core/theme/theme.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: ColorTheme.regularGrey,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: _screenHeight / 2,
                  width: _screenWidth,
                  color: ColorTheme.lightIndigo,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 160.0,
                        child: Image.asset('${PREFIX}imok.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: ColorTheme.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),  
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),  
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30))
                                ),
                                prefixIcon: Icon(Icons.mail_outline)
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                                prefixIcon: Icon(Icons.lock_outline),
                                suffixIcon: GestureDetector(
                                  child: Icon(Icons.remove_red_eye)
                                )
                              ),
                            ),
                          ],
                        )
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            child: Text(
                              'Esqueceu a senha?',
                              style: TextStyle(
                                color: Colors.grey, 
                                decoration: TextDecoration.underline, 
                                decorationThickness: 2,
                                fontWeight: FontWeight.w700, 
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 70),
                        child: RaisedButton(
                          color: ColorTheme.lightIndigo,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Entrar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}