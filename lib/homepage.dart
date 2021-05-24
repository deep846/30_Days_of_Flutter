import 'package:flutter/material.dart';
class homepage extends StatelessWidget {
  int days = 30;
  String name = "Deep";
  double x = 5.14;
  bool ismale = true;
  num temp = 30.5; //num datatype can take both int and double variable;
  var day1 = "monday"; // we can store all type of datatype variable with var
  //const pi = 3.14;
  final pi = 3.14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}