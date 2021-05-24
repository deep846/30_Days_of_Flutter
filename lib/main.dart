import 'package:flutter/material.dart';
import 'package:my_first_app/pages/homepage.dart';
import 'package:my_first_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        //primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      initialRoute: "/homepage",
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
        "/loginpage": (context) => LoginPage(),
      },
    );
  }
}
