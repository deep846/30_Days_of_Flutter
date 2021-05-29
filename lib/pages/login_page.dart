import 'package:flutter/material.dart';
import 'package:my_first_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

String name = "";
bool pressed = false;

class _LoginPageState extends State<LoginPage> {
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
              "Welcome $name",
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
                  Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
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
                  InkWell(
                    onTap: () async {
                      setState(() {
                        pressed = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: pressed ? 50 : 150,
                      alignment: Alignment.center,
                      child: pressed
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape: pressed ? BoxShape.circle : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(pressed ? 50 : 10)),
                    ),
                  )
                  // ElevatedButton(
                  //   style: TextButton.styleFrom(
                  //       minimumSize: Size(150,
                  //           50)), //construct a button with adjusting hight and width
                  //   onPressed: () {
                  //     print("Hi Deep");
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
