import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue[400],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Create new list",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.white),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Done",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )),
        buildTitle(context),
        buildseries(context),
        buildseries(context),
        buildseries(context),
        buildseries(context),
        buildseries(context),
        buildseries(context),
        Container(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                  size: 30,
                ),
                onPressed: () {},
              ),
              Text("Upload your list",
                  style: TextStyle(fontSize: 30, color: Colors.grey))
            ],
          ),
        )
      ]),
    );
  }

  Padding buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Stack(
              children: [
                Positioned(
                    left: 10,
                    child: Text("Sno.", style: TextStyle(color: Colors.white))),
                Positioned(
                    left: MediaQuery.of(context).size.width / 4,
                    child: Text("Product Name",
                        style: TextStyle(color: Colors.white))),
                Positioned(
                    right: 100,
                    child: Text("QTY", style: TextStyle(color: Colors.white))),
                Positioned(
                    right: 50,
                    child:
                        Text("Units", style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildseries(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2),
      child: Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "1",
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: MediaQuery.of(context).size.width / 6,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "image/text of product",
                        ),
                      ),
                    )),
                Positioned(
                    right: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "5",
                        ),
                      ),
                    )),
                Positioned(
                    right: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Kg",
                        ),
                      ),
                    )),
                Positioned(
                    right: 10,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red),
                      child: Icon(
                        Icons.rotate_right,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
