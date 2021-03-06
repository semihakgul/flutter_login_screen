import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Register.dart';
import 'package:login_page/Login.dart';
import 'SharedPreferences.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Registration'),
            ),
            body: RegisterPage()));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RaisedButton(
              child: Text('Log out'),
              onPressed: () {
                getLoginValue().then(( String value) => print(value));
                getUsername().then(( String value) => print(value));
                getPassword().then(( String value) => print(value));
                clearCache();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ),
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
