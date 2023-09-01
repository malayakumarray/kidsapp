import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/profile/timelimit/managetime.dart';
import 'package:kidsapp/screens/schedulemanager/createscdule.dart';
import 'package:kidsapp/screens/schedulemanager/editschedule.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class timelimits extends StatefulWidget {
  const timelimits({Key? key}) : super(key: key);

  @override
  State<timelimits> createState() => _timelimitsState();
}

class _timelimitsState extends State<timelimits> {
  bool isSwitched = false;
  String textValue = "";
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Time Limit",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 56, 56, 56)),
            ),
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
              child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: MediaQuery.of(context).size.width * 1,
                  //height: MediaQuery.of(context).size.height * 1,
                  //width: MediaQuery.of(context).size.width * 1,
                  //height: MediaQuery.of(context).size.height * 1,
                  child: Column(children: [
                    //Icon(Icons.play_arrow),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.06,
                    // ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.02,
                    // ),
                    Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: double.infinity,
                        // height: MediaQuery.of(context).size.height * 0.162,
                        child: Column(children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            // color: Colors.white,
                            child: Text(
                              "Time Limit For User",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 56, 56, 56)),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "Set Time Limits On The Entire Profile  ",
                                style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 56, 56, 56)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: RaisedButton(
                              color: Color.fromARGB(255, 26, 200, 243),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const managetime(),
                                ));
                              },
                              child: Center(
                                  child: Text(
                                "Manage Time Limits",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              )),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.024,
                          ),
                        ])),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.011,
                    // ),
                    Divider(
                      color: Color.fromARGB(255, 139, 138, 138),
                      height: 25,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.31,
                    // ),
                    Center(
                      child: Text(
                        "Maximum Time Limit",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 66, 66, 66)),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.close_outlined,
                                color: Color.fromARGB(255, 26, 200, 243),
                                size: 40,
                              ),
                              Text(
                                "Close",
                              )
                            ],
                          ),
                          CircularPercentIndicator(
                            animation:
                                true, //animation to show progress at first
                            animationDuration: 1000,
                            radius: 70.0,
                            lineWidth: 15.0,
                            percent: 0.6,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new Text("1 Hour 44 Min"),
                                new Text("Remening"),
                              ],
                            ),
                            progressColor: Color.fromARGB(255, 26, 200, 243),
                          ),
                          Column(
                            children: [
                              Icon(Icons.pause,
                                  size: 40,
                                  color: Color.fromARGB(255, 26, 200, 243)),
                              Text(
                                "Pause",
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    // ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Per Applicationt",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 66, 66, 66)),
                      ),
                    ),

                    const Divider(
                      color: Color.fromARGB(255, 139, 138, 138),
                      height: 25,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      height: MediaQuery.of(context).size.height * 0.1,
                      // margin: EdgeInsets.only(
                      //   left: 8,
                      //   right: 8,
                      // ),
                      //padding: EdgeInsets.all(10),
                      //color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow_rounded),
                              Icon(Icons.insert_chart),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                // margin: EdgeInsets.all(2),
                                // padding: EdgeInsets.all(2),
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      "45 Minute Remainind",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                      ),
                                    ),
                                    LinearPercentIndicator(
                                      animation:
                                          true, //animation to show progress at first
                                      animationDuration: 1000,
                                      linearStrokeCap: LinearStrokeCap.round,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      lineHeight: 10.0,
                                      percent: 0.45,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 87, 174, 245),
                                    ),
                                    Text(
                                      "45 minute left",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Text("data")
                              Icon(
                                Icons.close,
                                color: Color.fromARGB(255, 26, 200, 243),
                              )
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.001,
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.01,
                    // ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.001,
                    // ),
                    const Divider(
                      color: Color.fromARGB(255, 139, 138, 138),
                      height: 25,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      height: MediaQuery.of(context).size.height * 0.1,
                      // margin: EdgeInsets.only(
                      //   left: 8,
                      //   right: 8,
                      // ),
                      //padding: EdgeInsets.all(10),
                      //color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow_rounded),
                              Icon(Icons.insert_chart),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                // margin: EdgeInsets.all(2),
                                // padding: EdgeInsets.all(2),
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      "65 Minute Remainind",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                      ),
                                    ),
                                    LinearPercentIndicator(
                                      animation:
                                          true, //animation to show progress at first
                                      animationDuration: 1000,
                                      linearStrokeCap: LinearStrokeCap.round,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      lineHeight: 10.0,
                                      percent: 0.65,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 87, 174, 245),
                                    ),
                                    Text(
                                      "65 minute left",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Text("data")
                              Icon(
                                Icons.close,
                                color: Color.fromARGB(255, 26, 200, 243),
                              )
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.001,
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                    //
                    const Divider(
                      color: Color.fromARGB(255, 139, 138, 138),
                      height: 25,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      height: MediaQuery.of(context).size.height * 0.1,
                      // margin: EdgeInsets.only(
                      //   left: 8,
                      //   right: 8,
                      // ),
                      //padding: EdgeInsets.all(10),
                      //color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow_rounded),
                              Icon(Icons.insert_chart),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                // margin: EdgeInsets.all(2),
                                // padding: EdgeInsets.all(2),
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      "45 Minute Remainind",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                      ),
                                    ),
                                    LinearPercentIndicator(
                                      animation:
                                          true, //animation to show progress at first
                                      animationDuration: 1000,
                                      linearStrokeCap: LinearStrokeCap.round,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      lineHeight: 10.0,
                                      percent: 0.45,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 87, 174, 245),
                                    ),
                                    Text(
                                      "45 minute left",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Text("data")
                              Icon(
                                Icons.close,
                                color: Color.fromARGB(255, 26, 200, 243),
                              )
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.001,
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                    //
                    const Divider(
                      color: Color.fromARGB(255, 139, 138, 138),
                      height: 25,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      height: MediaQuery.of(context).size.height * 0.1,
                      // margin: EdgeInsets.only(
                      //   left: 8,
                      //   right: 8,
                      // ),
                      //padding: EdgeInsets.all(10),
                      //color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow_rounded),
                              Icon(Icons.insert_chart),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                // margin: EdgeInsets.all(2),
                                // padding: EdgeInsets.all(2),
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      "45 Minute Remainind",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                      ),
                                    ),
                                    LinearPercentIndicator(
                                      animation:
                                          true, //animation to show progress at first
                                      animationDuration: 1000,
                                      linearStrokeCap: LinearStrokeCap.round,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      lineHeight: 10.0,
                                      percent: 0.45,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 87, 174, 245),
                                    ),
                                    Text(
                                      "45 minute left",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Text("data")
                              Icon(
                                Icons.close,
                                color: Color.fromARGB(255, 26, 200, 243),
                              )
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.001,
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                    //
                  ])))),
    );
  }
}
