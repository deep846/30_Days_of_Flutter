import 'package:flutter/material.dart';
import 'package:my_first_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool pressed = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        pressed = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        pressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // using this we can scroll a page over the window
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
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
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "UserName",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Username can't be empty";
                          } else {
                            return null;
                          }
                        },
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
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password can't be empty";
                        } else if (value.length < 6) {
                          return "Password should be atleast";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      // shape: pressed ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(pressed ? 50 : 10),
                      child: InkWell(
                        onTap: () => moveToHome(context),
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
                          // decoration: BoxDecoration(
                          //     color: Colors.deepPurple,
                          //     // shape: pressed ? BoxShape.circle : BoxShape.rectangle,
                          //     borderRadius:
                          //         BorderRadius.circular(pressed ? 50 : 10)),
                        ),
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
      ),
    );
  }
}
