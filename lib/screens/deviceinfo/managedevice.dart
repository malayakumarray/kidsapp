import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/deviceinfo/deviceinfo.dart';
import 'package:kidsapp/screens/profile/devices/device.dart';
import 'package:kidsapp/screens/schedulemanager/schedulemanager.dart';

class managedevices extends StatefulWidget {
  const managedevices({Key? key}) : super(key: key);

  @override
  State<managedevices> createState() => _managedevicesState();
}

class _managedevicesState extends State<managedevices> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
                color: Color.fromARGB(255, 235, 235, 235),
                width: MediaQuery.of(context).size.width * 1,
                child: Column(children: [
                  Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Column(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          // color: Colors.white,
                          child: Text(
                            "Assigned Deviceses",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 56, 56, 56)),
                          ),
                        ),
                        Container(
                          child: Text(
                            "View Add or Remove Devices To Profile",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 56, 56, 56)),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.00,
                        ),
                      ])),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Assigned Mobile",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 56, 56, 56)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => deviceinfo()));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: ListTile(
                          title: Text(
                            "Device Name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 68, 68, 68)),
                          ),
                          subtitle: Text(
                            "Connected To Router",
                            style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 202, 0)),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            size: 40,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Device List",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 56, 56, 56)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: ListTile(
                        title: Text(
                          "Device Name",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 68, 68, 68)),
                        ),
                        subtitle: Text(
                          "Connected to router",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 68, 243, 52)),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: ListTile(
                        title: Text(
                          "Device Name",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 68, 68, 68)),
                        ),
                        subtitle: Text(
                          "Last Connected 03/21",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 87, 87, 87)),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: ListTile(
                        title: Text(
                          "Device Name",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 68, 68, 68)),
                        ),
                        subtitle: Text(
                          "Last Connected Monday",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 87, 87, 87)),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: ListTile(
                        title: Text(
                          "Device Name",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 68, 68, 68)),
                        ),
                        subtitle: Text(
                          "Last Connected 1 Hour go",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 87, 87, 87)),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  //
                  // CheckboxListTile(
                  //   controlAffinity: ListTileControlAffinity.trailing,
                  //   secondary: const Icon(Icons.alarm),
                  //   title: const Text('Ringing at 5:00 AM every day'),
                  //   subtitle: Text('Ringing after 12 hours'),
                  //   value: valuesecond,
                  //   onChanged: ( value) {
                  //     setState(() {
                  //       valuesecond = value;
                  //     });
                  //   },
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: RaisedButton(
                      color: Color.fromARGB(255, 80, 224, 235),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => deviceses()));
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                ]))),
      ),
    );
  }
}
