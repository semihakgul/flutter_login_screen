import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Register.dart';
import 'package:login_page/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

Future<bool> setUsername(String name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("name", name);
}


Future<bool> setPassword(String password) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  print("password set $password");
  return prefs.setString("password", password);
}

Future<bool> setLoginValue(String loginValue) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("loginValue", loginValue);
}



Future<String> getUsername() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String name = prefs.getString("name");
  return name;
}

Future<String> getPassword() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String password = prefs.getString("password");
  return password;
}

Future<String> getLoginValue() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String loginValue = prefs.getString("loginValue");
  return loginValue;
}

Future<bool> clearCache() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.clear();
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
