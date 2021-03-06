import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: Column(
            children: [
              Container(height: 120, child: Image.asset("assets/logo.png")),
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Email or Mobile Number",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.lightBlue,
                        )),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.lightBlue,
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      color: Colors.lightBlue,
                      child: Container(
                          child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ))),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Forgot Your Password ?",
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "New to Anything? Sign Up",
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
