import 'package:flutter/material.dart';
import 'package:my_first_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // using this we can scroll a page over the window
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              //height: 500, // just fo testing perpous of scroll view
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                //fontStyle: ,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "UserName",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size(150,
                            50)), //construct a button with adjusting hight and width
                    onPressed: () {
                      print("Hi Deep");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },

                    child: Text("Login"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
