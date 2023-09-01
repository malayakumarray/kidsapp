import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/schedulemanager/createscdule.dart';
import 'package:kidsapp/screens/schedulemanager/editschedule.dart';

class schedule extends StatefulWidget {
  const schedule({Key? key}) : super(key: key);

  @override
  State<schedule> createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
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
              "Scdule Manager",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 56, 56, 56)),
            ),
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
              child: Container(
                  color: Color.fromARGB(255, 224, 224, 224),
                  width: MediaQuery.of(context).size.width * 1,
                  //height: MediaQuery.of(context).size.height * 1,
                  //width: MediaQuery.of(context).size.width * 1,
                  //height: MediaQuery.of(context).size.height * 1,
                  child: Column(children: [
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.06,
                    // ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.02,
                    // ),
                    Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.162,
                        child: Column(children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            // color: Colors.white,
                            child: Text(
                              "Master schedules",
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
                            child: Text(
                              "Add , View Or Edit Schedules",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 56, 56, 56)),
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
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const createscdule(),
                                ));
                              },
                              child: Center(
                                  child: Text(
                                "Create New Time Schedule",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              )),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.001,
                          ),
                        ])),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.001,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      height: MediaQuery.of(context).size.height * 0.24,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 6),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                // margin: EdgeInsets.all(2),
                                // padding: EdgeInsets.all(2),
                                width: MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.14,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      "Kids Bedtime",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 68, 68, 68)),
                                    ),
                                    Text(
                                      "9:00pm-6:00am",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 139, 139, 139)),
                                    ),
                                    Text(
                                      "Sun,Monday,Tuesday,Wed,Thu",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 139, 139, 139)),
                                    ),
                                    Text(
                                      "Assigned Profile:3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 119, 119, 119)),
                                    )
                                  ],
                                ),
                              ),
                              //Text("data")
                              Transform.scale(
                                  scale: 1.4,
                                  child: Switch(
                                    onChanged: toggleSwitch,
                                    value: isSwitched,
                                    activeColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    activeTrackColor:
                                        Color.fromARGB(255, 26, 200, 243),
                                    inactiveThumbColor:
                                        Color.fromARGB(255, 99, 99, 99),
                                    inactiveTrackColor:
                                        Color.fromARGB(255, 202, 202, 202),
                                  )),
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.001,
                              // )
                            ],
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 139, 138, 138),
                            height: 25,
                            thickness: 2,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Center(
                              child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const editschedule(),
                              ));
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 26, 200, 243)),
                            ),
                          ))
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.01,
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.001,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      height: MediaQuery.of(context).size.height * 0.24,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 6),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                // margin: EdgeInsets.all(2),
                                // padding: EdgeInsets.all(2),
                                width: MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.14,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      "Kids Bedtime",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 68, 68, 68)),
                                    ),
                                    Text(
                                      "9:00pm-6:00am",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 139, 139, 139)),
                                    ),
                                    Text(
                                      "Sun,Monday,Tuesday,Wed,Thu",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 139, 139, 139)),
                                    ),
                                    Text(
                                      "Assigned Profile:3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 119, 119, 119)),
                                    )
                                  ],
                                ),
                              ),
                              //Text("data")
                              Transform.scale(
                                  scale: 1.4,
                                  child: Switch(
                                    onChanged: toggleSwitch,
                                    value: isSwitched,
                                    activeColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    activeTrackColor:
                                        Color.fromARGB(255, 26, 200, 243),
                                    inactiveThumbColor:
                                        Color.fromARGB(255, 99, 99, 99),
                                    inactiveTrackColor:
                                        Color.fromARGB(255, 202, 202, 202),
                                  )),
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.001,
                              // )
                            ],
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 139, 138, 138),
                            height: 25,
                            thickness: 2,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Center(
                              child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const editschedule(),
                              ));
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 26, 200, 243)),
                            ),
                          ))
                        ],
                      ),
                    ),

                    // ,SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.01,
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.001,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      height: MediaQuery.of(context).size.height * 0.24,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 6),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                // margin: EdgeInsets.all(2),
                                // padding: EdgeInsets.all(2),
                                width: MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.14,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    Text(
                                      "Kids Bedtime",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 68, 68, 68)),
                                    ),
                                    Text(
                                      "9:00pm-6:00am",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 139, 139, 139)),
                                    ),
                                    Text(
                                      "Sun,Monday,Tuesday,Wed,Thu",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 139, 139, 139)),
                                    ),
                                    Text(
                                      "Assigned Profile:3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 119, 119, 119)),
                                    )
                                  ],
                                ),
                              ),
                              //Text("data")
                              Transform.scale(
                                  scale: 1.4,
                                  child: Switch(
                                    onChanged: toggleSwitch,
                                    value: isSwitched,
                                    activeColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    activeTrackColor:
                                        Color.fromARGB(255, 26, 200, 243),
                                    inactiveThumbColor:
                                        Color.fromARGB(255, 99, 99, 99),
                                    inactiveTrackColor:
                                        Color.fromARGB(255, 202, 202, 202),
                                  )),
                              // SizedBox(
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.001,
                              // )
                            ],
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 139, 138, 138),
                            height: 25,
                            thickness: 2,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Center(
                              child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const editschedule(),
                              ));
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 26, 200, 243),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ])))),
    );
  }
}
