import 'dart:convert';

import 'package:anything/screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.width / 3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                          child: Center(
                            child: Text(
                              "Create new list",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                          child: Center(
                            child: Text(
                              "Upload new list",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Personal",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.blur_circular,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Business",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          tile(context),
          tile(context),
          tile(context),
          tile(context),
        ],
      ),
    ));
  }
}

Widget tile(context) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 75,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Birthday list",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text("Create Date",
                        style: TextStyle(
                            //  color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(children: [
                      Icon(
                        Icons.menu_open,
                        color: Colors.black,
                        size: 20,
                      ),
                      Icon(
                        Icons.access_alarm_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ]),
                    Text(
                      "In Process: 12/30",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ));
}
