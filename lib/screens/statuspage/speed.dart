import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/statuspage/activitygraph.dart';
import 'package:kidsapp/screens/statuspage/datacell.dart';

class speed extends StatefulWidget {
  const speed({Key? key}) : super(key: key);

  @override
  State<speed> createState() => _speedState();
}

class _speedState extends State<speed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Upload Speed",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 26, 243, 91),
                ),
              ),
              Text(
                "Download Speed",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 56, 224, 236),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        //
        Container(
          width: double.infinity,
          child: ActivityGraph(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.021,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.61,
          height: MediaQuery.of(context).size.height * 0.051,
          child: RaisedButton(
            color: Color.fromARGB(255, 26, 200, 243),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => ()));
            },
            child: Text(
              "Speed Test",
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.021,
        ),
        Container(
          width: double.infinity,
          child: datacell(),
        )
      ]),
    );
  }
}
