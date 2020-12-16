import 'package:anything/main.dart';
import 'package:anything/screen.dart';
import 'package:anything/signin.dart';
import 'package:anything/signup.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            child: Text("Sign in Screen"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Signin();
                },
              ));
            },
          ),
          RaisedButton(
            child: Text("Second Screen"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Screen2();
                },
              ));
            },
          ),
          RaisedButton(
            child: Text("First Screen"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MyApp();
                },
              ));
            },
          ),
          RaisedButton(
            child: Text("Signup Screen"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Signup();
                },
              ));
            },
          )
        ],
      ),
    );
  }
}
