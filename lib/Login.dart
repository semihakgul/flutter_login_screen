import 'package:login_page/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var userNameInputController = TextEditingController();
var passwordInputController = TextEditingController();

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: userNameInputController,
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
            child: TextFormField(
              controller: passwordInputController,
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
              child: Text('Log in'),
              onPressed: () {
                getUsername().then((String name) {
                  print(userNameInputController.text);
                  print(name);
                  if (userNameInputController.text == name) {
                    getPassword().then((String password) {
                      if (passwordInputController.text == password){
                        setLoginValue('true');
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomePage(),
                          ),

                        );
                      }else print("password");
                    });
                  }else print("name");
                });
              })
        ],
      ),
    ));
  }
}
