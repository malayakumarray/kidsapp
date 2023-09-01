import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/schedulemanager/schedulemanager.dart';

class createscdule extends StatefulWidget {
  const createscdule({Key? key}) : super(key: key);

  @override
  State<createscdule> createState() => _createscduleState();
}

class _createscduleState extends State<createscdule> {
  bool isSwitched = false;
  String textValue = '';

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
        color: Color.fromARGB(255, 255, 255, 255),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Create Time Schedule",
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
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  // Text("Create Time Schedule",
                  //     style: TextStyle(

                  //         //fontWeight: FontWeight.bold,
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.bold,
                  //         color: Color.fromARGB(255, 65, 65, 65))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    child: Text("Title:",
                        style: TextStyle(

                            //fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 65, 65))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.019,
                  ),
                  Container(
                    color: Color.fromARGB(255, 241, 241, 241),
                    width: MediaQuery.of(context).size.width * 0.9,
                    // height: MediaQuery.of(context).size.height * 0.055,
                    child: TextFormField(
                      // onChanged: (val) {
                      //   setState(() {
                      //     email = val;
                      //   });
                      // },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 170, 170, 170)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 49, 49, 49)),
                        ),
                        hintText: "Customtitle Here",
                        // labelText: '     Email Id',
                        labelStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 44, 44, 44)),
                        // prefixIcon: Icon(
                        //     CupertinoIcons.profile_circled,
                        //     color:
                        //         Color.fromARGB(255, 85, 83, 83)),
                      ),
                    ),
                  ),
                  ////
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    child: Text("Start Time:",
                        style: TextStyle(

                            //fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 43, 43, 43))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.019,
                  ),
                  Container(
                    color: Color.fromARGB(255, 238, 238, 238),
                    width: MediaQuery.of(context).size.width * 0.9,
                    //height: MediaQuery.of(context).size.height * 0.055,
                    child: TextFormField(
                      // onChanged: (val) {
                      //   setState(() {
                      //     email = val;
                      //   });
                      // },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 149, 207, 167)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 85, 83, 83)),
                        ),
                        hintText: "6:00 PM",
                        suffixIcon: Icon(Icons.alarm,
                            color: Color.fromARGB(255, 85, 83, 83)),
                        // labelText: '     Email Id',
                        labelStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 83, 83)),
                        // prefixIcon: Icon(
                        //     CupertinoIcons.profile_circled,
                        //     color:
                        //         Color.fromARGB(255, 85, 83, 83)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    child: Text("End Time:",
                        style: TextStyle(

                            //fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 65, 65))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    color: Color.fromARGB(255, 235, 235, 235),
                    width: MediaQuery.of(context).size.width * 0.9,
                    // height: MediaQuery.of(context).size.height * 0.055,
                    child: TextFormField(
                      // onChanged: (val) {
                      //   setState(() {
                      //     email = val;
                      //   });
                      // },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 149, 207, 167)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 85, 83, 83)),
                        ),
                        hintText: "7:00 PM",
                        // labelText: '     Email Id',
                        labelStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 83, 83)),
                        suffixIcon: Icon(Icons.alarm,
                            color: Color.fromARGB(255, 85, 83, 83)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 179, 179, 179),
                    height: 25,
                    thickness: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  //),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Select Days",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 36, 36, 36),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 179, 179, 179),
                    height: 25,
                    thickness: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Asign To Profiles",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 36, 36, 36),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                      child: FlatButton(
                    onPressed: () {},
                    child: Text("+ Assign",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 196, 245),
                        )),
                  )),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.03,
                  // ),
                  Divider(
                    color: Color.fromARGB(255, 179, 179, 179),
                    height: 25,
                    thickness: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 1,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Send Reminder Alert ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 36, 36, 36),
                                fontWeight: FontWeight.bold),
                          ),
                          Transform.scale(
                              scale: 1.2,
                              child: Switch(
                                onChanged: toggleSwitch,
                                value: isSwitched,
                                activeColor: Color.fromARGB(255, 255, 255, 255),
                                activeTrackColor:
                                    Color.fromARGB(255, 26, 200, 243),
                                inactiveThumbColor:
                                    Color.fromARGB(255, 99, 99, 99),
                                inactiveTrackColor:
                                    Color.fromARGB(255, 202, 202, 202),
                              )),
                        ],
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 179, 179, 179),
                    height: 25,
                    thickness: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      //color: Color.fromARGB(255, 26, 200, 243),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.1,
                    child: RaisedButton(
                      color: Color.fromARGB(255, 26, 200, 243),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => schedule()));
                      },
                      child: Text(
                        "Create",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  )
                ],
              ),
            ))));
    //  SizedBox(
    //   height: MediaQuery.of(context).size.height * 0.02,
    // );
  }
}
