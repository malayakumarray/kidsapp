import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Usage",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 56, 56, 56)),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircularPercentIndicator(
                    animation: true, //animation to show progress at first
                    animationDuration: 1000,
                    radius: 70.0,
                    lineWidth: 15.0,
                    percent: 0.67,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Text(
                          "68%",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 56, 56, 56)),
                        ),
                      ],
                    ),
                    progressColor: Color.fromARGB(255, 0, 238, 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Text(
                    "CPU Usage",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 56, 56, 56)),
                  ),
                ],
              ),
              Column(
                children: [
                  CircularPercentIndicator(
                    animation: true, //animation to show progress at first
                    animationDuration: 1000,
                    radius: 70.0,
                    lineWidth: 15.0,
                    percent: 0.07,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Text(
                          "7%",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 56, 56, 56)),
                        ),
                      ],
                    ),
                    progressColor: Color.fromARGB(255, 202, 238, 43),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Text(
                    "Memory Usage",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 56, 56, 56)),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.021,
        ),
        const Divider(
          color: Color.fromARGB(255, 209, 207, 207),
          height: 15,
          thickness: 2,
          indent: 5,
          endIndent: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.lan_sharp,
                    color: Colors.green,
                    size: 50,
                  ),
                  Text(
                    "WAN",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 56, 56, 56)),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.lan_sharp,
                    color: Colors.green,
                    size: 50,
                  ),
                  Text(
                    "LAN",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 56, 56, 56)),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.lan_sharp,
                    color: Colors.green,
                    size: 50,
                  ),
                  Text(
                    "WAN",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 56, 56, 56)),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.lan_sharp,
                    color: Colors.green,
                    size: 50,
                  ),
                  Text(
                    "LAN",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 56, 56, 56)),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.041,
        ),
        const Divider(
          color: Color.fromARGB(255, 224, 224, 224),
          height: 25,
          thickness: 2,
          indent: 5,
          endIndent: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Data Usage",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 56, 56, 56)),
              ),
              Text(
                "148/350 GB Used",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 56, 56, 56)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "42%",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 26, 200, 243),
                ),
              ),
              Text(
                "",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 56, 56, 56)),
              ),
            ],
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
          width: double.infinity,
          alignment: Alignment.center,
          child: Center(
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width * 0.9,
              lineHeight: 15.0,
              percent: 0.42,
              backgroundColor: Colors.grey,
              progressColor: Color.fromARGB(255, 26, 200, 243),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 26, 200, 243),
                ),
              ),
              Text(
                "Cycle Ends In March-09-2022",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 77, 77, 77),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
