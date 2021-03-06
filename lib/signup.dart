import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: width / 2.5,
            ),
            Center(
                child: Column(
              children: [
                Container(height: 120, child: Image.asset("assets/logo.png")),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.lightBlue,
                          )),
                    ),
                    SizedBox(
                      height: 5,
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
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Email Address",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.lightBlue,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Mobile Number",
                          prefixIcon: Icon(
                            Icons.mobile_friendly,
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
                              "Sign Up",
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
                      "Already have account? Sign In",
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
      ),
    );
  }
}
