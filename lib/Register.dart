import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Login.dart';
import 'package:login_page/main.dart';

var passwordController = TextEditingController();
var userNameController = TextEditingController();

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView (
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: userNameController,
                  obscureText: false,
                  decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      )),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: false,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      )),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'Already registered?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                onPressed: () {
                  setUsername(userNameController.text).then((bool committed) {

                  });
                  setPassword(passwordController.text).then((bool done) {

                  });
                  print(passwordController.text);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage(),
                    ),
                  );
                },
                child: Text('Submit'),
              )
            ],
          ),
        ),
    );
  }
}
