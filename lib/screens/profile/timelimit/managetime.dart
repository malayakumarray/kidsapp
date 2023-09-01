import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/profile/timelimit/setapplimit.dart';
import 'package:kidsapp/screens/profile/timelimit/timelimit.dart';

class managetime extends StatefulWidget {
  const managetime({Key? key}) : super(key: key);

  @override
  State<managetime> createState() => _managetimeState();
}

class _managetimeState extends State<managetime> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const timelimits(),
                ));
              },
              child: Text(
                "Save",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 26, 200, 243),
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
          centerTitle: true,
          title: Text(
            "Manage Time Limit",
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
                        "Setup Profile Limits",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Center(
                      child: Text(
                    "Set Time Limit Belong To Profile",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 63, 63, 63)),
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 192, 192, 192),
                    height: 15,
                    thickness: 1,
                    indent: 2,
                    endIndent: 5,
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_clock_outlined,
                      size: 55,
                      color: Color.fromARGB(255, 26, 200, 243),
                    ),
                    title: Text(
                      "1h",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 26, 200, 243),
                      ),
                    ),
                    subtitle: Text("sun,sat",
                        style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 85, 85))),
                    trailing: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 26, 200, 243),
                        ),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 192, 192, 192),
                    height: 15,
                    thickness: 1,
                    indent: 2,
                    endIndent: 5,
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_clock_outlined,
                      size: 55,
                      color: Color.fromARGB(255, 26, 200, 243),
                    ),
                    title: Text(
                      "2h",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 26, 200, 243),
                      ),
                    ),
                    subtitle: Text("Weekend",
                        style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 85, 85))),
                    trailing: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 26, 200, 243),
                        ),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 192, 192, 192),
                    height: 15,
                    thickness: 1,
                    indent: 2,
                    endIndent: 5,
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_clock_outlined,
                      size: 55,
                      color: Color.fromARGB(255, 26, 200, 243),
                    ),
                    title: Text(
                      "2h",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 26, 200, 243),
                      ),
                    ),
                    subtitle: Text("Weekend",
                        style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 85, 85))),
                    trailing: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 26, 200, 243),
                        ),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 192, 192, 192),
                    height: 15,
                    thickness: 1,
                    indent: 2,
                    endIndent: 5,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: RaisedButton(
                      color: Color.fromARGB(255, 26, 200, 243),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const setapplimit(),
                        ));
                      },
                      child: Center(
                          child: Text(
                        "Set App Limits",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Center(
                      child: Text(
                    "Set App Limit Belong To Profile",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 63, 63, 63)),
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 192, 192, 192),
                    height: 15,
                    thickness: 1,
                    indent: 2,
                    endIndent: 5,
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_clock_outlined,
                      size: 55,
                      color: Color.fromARGB(255, 26, 200, 243),
                    ),
                    title: Text(
                      "2h",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 26, 200, 243),
                      ),
                    ),
                    subtitle: Text("Weekend",
                        style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 85, 85))),
                    trailing: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 26, 200, 243),
                        ),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 192, 192, 192),
                    height: 15,
                    thickness: 1,
                    indent: 2,
                    endIndent: 5,
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_clock_outlined,
                      size: 55,
                      color: Color.fromARGB(255, 26, 200, 243),
                    ),
                    title: Text(
                      "13m",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 26, 200, 243),
                      ),
                    ),
                    subtitle: Text("su,mo,sat",
                        style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 85, 85))),
                    trailing: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 26, 200, 243),
                        ),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 192, 192, 192),
                    height: 15,
                    thickness: 1,
                    indent: 2,
                    endIndent: 5,
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_clock_outlined,
                      size: 55,
                      color: Color.fromARGB(255, 26, 200, 243),
                    ),
                    title: Text(
                      "1h",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 26, 200, 243),
                      ),
                    ),
                    subtitle: Text("su,mo,sat",
                        style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 85, 85))),
                    trailing: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 26, 200, 243),
                        ),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 192, 192, 192),
                    height: 15,
                    thickness: 1,
                    indent: 2,
                    endIndent: 5,
                  ),

                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),

                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),
                ]))),
      ),
    );
  }
}
