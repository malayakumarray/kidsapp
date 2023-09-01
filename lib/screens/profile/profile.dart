import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/profile/devices/device.dart';
import 'package:kidsapp/screens/profile/profileschedule/profileschedule.dart';
import 'package:kidsapp/screens/profile/rewardsystem/rewardsystem.dart';
import 'package:kidsapp/screens/profile/timelimit/timelimit.dart';
import 'package:kidsapp/screens/schedulemanager/editschedule.dart';
import 'package:kidsapp/screens/schedulemanager/schedulemanager.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.settings,
              color: Color.fromARGB(255, 59, 59, 59),
            ),
            Text("   ")
          ],
          centerTitle: true,
          title: Text(
            "Anna",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 56, 56, 56)),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            child: Column(children: [
              //
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromARGB(255, 196, 81, 231),
                      Color.fromARGB(255, 193, 55, 235),
                      Color.fromARGB(255, 91, 113, 236),
                      // Color.fromARGB(255, 109, 231, 135),
                      Color.fromARGB(255, 93, 206, 235),
                    ])),
                height: MediaQuery.of(context).size.height * 0.2,
                // margin: EdgeInsets.only(left: 8, right: 8, top: 6),
                padding: EdgeInsets.all(10),
                //color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            // color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          // margin: EdgeInsets.all(2),
                          // padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.14,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.022,
                              // ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg'),
                                backgroundColor:
                                    Color.fromARGB(255, 195, 202, 157),
                                radius: 50,
                              ),
                            ],
                          ),
                        ),
                        //Text("data")
                        // Transform.scale(
                        //     scale: 1.4,
                        //     child: Switch(
                        //       onChanged: toggleSwitch,
                        //       value: isSwitched,
                        //       activeColor:
                        //           Color.fromARGB(255, 255, 255, 255),
                        //       activeTrackColor:
                        //           Color.fromARGB(255, 26, 200, 243),
                        //       inactiveThumbColor:
                        //           Color.fromARGB(255, 99, 99, 99),
                        //       inactiveTrackColor:
                        //           Color.fromARGB(255, 202, 202, 202),
                        //     )),
                        // SizedBox(
                        //   width:
                        //       MediaQuery.of(context).size.width * 0.001,
                        // )
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            // color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          // margin: EdgeInsets.all(2),
                          // padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.14,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.012,
                              // ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: RaisedButton(
                                  color: Color.fromARGB(255, 26, 200, 243),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                rewardsystem()));
                                  },
                                  child: Text(
                                    "Reward system",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 36, 36, 36),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: RaisedButton(
                                  color: Color.fromARGB(255, 26, 200, 243),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => schedule()));
                                  },
                                  child: Text(
                                    "Brower History",
                                    style: TextStyle(
                                        fontSize: 16,
                                        //color: Color.fromARGB(255, 36, 36, 36),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "    12 Tokens *",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                  ],
                ),
              ),

              //
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 231, 231, 231),
                ),
                height: MediaQuery.of(context).size.height * 0.17,
                margin: EdgeInsets.only(left: 8, right: 8, top: 6),
                padding: EdgeInsets.all(0),
                //color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            // color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          // margin: EdgeInsets.all(2),
                          // padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.14,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.012,
                              // ),
                              Text(
                                " Today's usage ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 68, 68, 68)),
                              ),
                              LinearPercentIndicator(
                                animation:
                                    true, //animation to show progress at first
                                animationDuration: 1000,
                                linearStrokeCap: LinearStrokeCap.round,
                                width: MediaQuery.of(context).size.width * 0.6,
                                lineHeight: 10.0,
                                percent: 0.5,
                                backgroundColor: Colors.grey,
                                progressColor:
                                    Color.fromARGB(255, 26, 200, 243),
                              ),
                              StepProgressIndicator(
                                totalSteps: 12,
                                currentStep: 4,
                                padding: 6.0,
                                size: 12,
                                progressDirection: TextDirection.rtl,
                                selectedColor: Colors.green,
                                unselectedColor: Colors.black12,
                                selectedGradientColor: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.yellowAccent,
                                    Colors.deepOrange
                                  ],
                                ),
                                unselectedGradientColor: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.black, Colors.blue],
                                ),
                              ),
                              LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.6,
                                lineHeight: 10.0,
                                percent: 0.7,
                                backgroundColor: Colors.grey,
                                progressColor:
                                    Color.fromARGB(255, 26, 200, 243),
                              ),
                            ],
                          ),
                        ),
                        //Text("data")
                        // Transform.scale(
                        //     scale: 1.4,
                        //     child: Switch(
                        //       onChanged: toggleSwitch,
                        //       value: isSwitched,
                        //       activeColor:
                        //           Color.fromARGB(255, 255, 255, 255),
                        //       activeTrackColor:
                        //           Color.fromARGB(255, 26, 200, 243),
                        //       inactiveThumbColor:
                        //           Color.fromARGB(255, 99, 99, 99),
                        //       inactiveTrackColor:
                        //           Color.fromARGB(255, 202, 202, 202),
                        //     )),
                        // SizedBox(
                        //   width:
                        //       MediaQuery.of(context).size.width * 0.001,
                        // )
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            // color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          // margin: EdgeInsets.all(2),
                          // padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.14,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.012,
                              // ),
                              Text(
                                "View ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 26, 200, 243),
                                ),
                              ),
                              Text(
                                "Instagram",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 70, 70, 70)),
                              ),
                              Text(
                                "Tik Tok",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 65, 65, 65)),
                              ),
                              Text(
                                "Youtube",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 65, 65, 65)),
                              )
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ],
                ),
              ),
              //
              InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(
                    builder: (context) => const deviceses(),
                  ));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 231, 231, 231),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  margin: EdgeInsets.only(left: 8, right: 8, top: 6),
                  padding: EdgeInsets.all(0),
                  //color: Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true)
                                  .push(MaterialPageRoute(
                                builder: (context) => const deviceses(),
                              ));
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 231, 231, 231),
                              ),
                              // margin: EdgeInsets.all(2),
                              // padding: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.012,
                                  ),
                                  Text(
                                    "Deviceses",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 68, 68, 68)),
                                  ),
                                  Text(
                                    "6 Assigned",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 139, 139, 139)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.videogame_asset)
                        ],
                      ),
                      //
                    ],
                  ),
                ),
              ),
              //
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 231, 231, 231),
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                margin: EdgeInsets.only(left: 8, right: 8, top: 6),
                padding: EdgeInsets.all(0),
                //color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const timelimits(),
                            ));
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 231, 231, 231),
                            ),
                            // margin: EdgeInsets.all(2),
                            // padding: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012,
                                ),
                                Text(
                                  "Time Limit",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 68, 68, 68)),
                                ),
                                Text(
                                  "4 Limits",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          Color.fromARGB(255, 139, 139, 139)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.settings_power_sharp)
                      ],
                    ),
                  ],
                ),
              ),
              //
              InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(
                    builder: (context) => const profileschedule(),
                  ));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 231, 231, 231),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  margin: EdgeInsets.only(left: 8, right: 8, top: 6),
                  padding: EdgeInsets.all(0),
                  //color: Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 231, 231, 231),
                            ),
                            // margin: EdgeInsets.all(2),
                            // padding: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012,
                                ),
                                Text(
                                  "Schedules",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 68, 68, 68)),
                                ),
                                Text(
                                  "3 Schedules",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          Color.fromARGB(255, 139, 139, 139)),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.alarm)
                        ],
                      ),
                      //
                    ],
                  ),
                ),
              ),
              //
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 231, 231, 231),
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                margin: EdgeInsets.only(left: 8, right: 8, top: 6),
                padding: EdgeInsets.all(0),
                //color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 231, 231, 231),
                          ),
                          // margin: EdgeInsets.all(2),
                          // padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.012,
                              ),
                              Text(
                                "Filterss",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 68, 68, 68)),
                              ),
                              Text(
                                "3 Filters",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 139, 139, 139)),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.computer)
                      ],
                    ),
                  ],
                ),
              ),
              //
            ]),
          ),
        ));
  }
}
