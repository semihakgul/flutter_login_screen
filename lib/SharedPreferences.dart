
import 'package:shared_preferences/shared_preferences.dart';

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
