import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply Opacity on Widget"),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
          padding: EdgeInsets.all(0),
          child: Stack(
            children: [
              Positioned(
                // top: 0,
                // left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Color.fromARGB(255, 212, 212, 212),
                ),
              ),
              Positioned(
                //top: 60,
                left: MediaQuery.of(context).size.width * 0.3,
                child: Opacity(
                    //Wrap any widget with Opacity()
                    opacity: 0.5, //from 0-1, 0.5 = 50% opacity
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: 200,
                      color: Color.fromARGB(255, 171, 202, 204),
                    )),
              ),
              Positioned(
                top: 60,
                left: 70,
                child: Opacity(
                    //Wrap any widget with Opacity()
                    opacity: 0.6, //from 0-1, 0.5 = 50% opacity
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Color.fromARGB(255, 69, 197, 206),
                      child: Column(children: [
                        Positioned(
                          //top: 60,
                          left: MediaQuery.of(context).size.width * 0.3,
                          child: Opacity(
                              //Wrap any widget with Opacity()
                              opacity: 0.5, //from 0-1, 0.5 = 50% opacity
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                width: 200,
                                color: Color.fromARGB(255, 132, 221, 166),
                              )),
                        ),
                      ]),
                    )),
              )
            ],
          )),
    );
  }
}
