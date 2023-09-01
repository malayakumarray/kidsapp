import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/deviceinfo/deviceinfo.dart';

class devicemanager extends StatefulWidget {
  const devicemanager({Key? key}) : super(key: key);

  @override
  State<devicemanager> createState() => _devicemanagerState();
}

class _devicemanagerState extends State<devicemanager> {
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
      theme: ThemeData(backgroundColor: Colors.white),
      color: Color.fromARGB(255, 255, 255, 255),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Device Manager",
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
              height: MediaQuery.of(context).size.height * 1,
              //width: MediaQuery.of(context).size.width * 1,
              //height: MediaQuery.of(context).size.height * 1,
              child: Column(
                children: [
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.06,
                  // ),
                  //  SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.02,
                  // ),
                  Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.085,
                      child: Column(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          // color: Colors.white,
                          child: Text(
                            "19 Deviceses",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 56, 56, 56)),
                          ),
                        ),
                        Container(
                          child: Text(
                            "View Devices on network",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 56, 56, 56)),
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    //color: Color.fromARGB(255, 222, 238, 238),
                    child: Center(
                      child: ListTile(
                          leading: InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const deviceinfo(),
                            )),
                            child: Icon(
                              Icons.menu,
                              color: Color.fromARGB(255, 51, 51, 51),
                            ),
                          ),
                          trailing: Transform.scale(
                              scale: 1.3,
                              child: Switch(
                                onChanged: toggleSwitch,
                                value: isSwitched,
                                activeColor: Color.fromARGB(255, 255, 255, 255),
                                activeTrackColor:
                                    Color.fromARGB(255, 44, 123, 168),
                                inactiveThumbColor:
                                    Color.fromARGB(255, 136, 136, 136),
                                inactiveTrackColor:
                                    Color.fromARGB(255, 182, 173, 173),
                              )),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Iphone 13 ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Last connected 03/06 ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.height * 0.6,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      //color: Color.fromARGB(255, 222, 238, 238),
                      child: Center(
                        child: ListTile(
                            leading: InkWell(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const deviceinfo(),
                              )),
                              child: Icon(
                                Icons.menu,
                                color: Color.fromARGB(255, 51, 51, 51),
                              ),
                            ),
                            trailing: Transform.scale(
                                scale: 1.3,
                                child: Switch(
                                  onChanged: toggleSwitch,
                                  value: isSwitched,
                                  activeColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  activeTrackColor:
                                      Color.fromARGB(255, 44, 123, 168),
                                  inactiveThumbColor:
                                      Color.fromARGB(255, 136, 136, 136),
                                  inactiveTrackColor:
                                      Color.fromARGB(255, 182, 173, 173),
                                )),
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Iphone 13 ",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Last connected 03/06 ",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    //color: Color.fromARGB(255, 222, 238, 238),
                    child: Center(
                      child: ListTile(
                          leading: InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const deviceinfo(),
                            )),
                            child: Icon(
                              Icons.menu,
                              color: Color.fromARGB(255, 51, 51, 51),
                            ),
                          ),
                          trailing: Transform.scale(
                              scale: 1.3,
                              child: Switch(
                                onChanged: toggleSwitch,
                                value: isSwitched,
                                activeColor: Color.fromARGB(255, 255, 255, 255),
                                activeTrackColor:
                                    Color.fromARGB(255, 44, 123, 168),
                                inactiveThumbColor:
                                    Color.fromARGB(255, 136, 136, 136),
                                inactiveTrackColor:
                                    Color.fromARGB(255, 182, 173, 173),
                              )),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Iphone 13 ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Last connected 03/06 ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 250, 250, 250),
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    //color: Color.fromARGB(255, 222, 238, 238),
                    child: Center(
                      child: ListTile(
                          leading: InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const deviceinfo(),
                            )),
                            child: Icon(
                              Icons.menu,
                              color: Color.fromARGB(255, 51, 51, 51),
                            ),
                          ),
                          trailing: Transform.scale(
                              scale: 1.3,
                              child: Switch(
                                onChanged: toggleSwitch,
                                value: isSwitched,
                                activeColor: Color.fromARGB(255, 255, 255, 255),
                                activeTrackColor:
                                    Color.fromARGB(255, 44, 123, 168),
                                inactiveThumbColor:
                                    Color.fromARGB(255, 136, 136, 136),
                                inactiveTrackColor:
                                    Color.fromARGB(255, 182, 173, 173),
                              )),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Devicename ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Connected",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.green),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    //color: Color.fromARGB(255, 222, 238, 238),
                    child: Center(
                      child: ListTile(
                          leading: Icon(
                            Icons.menu,
                            color: Color.fromARGB(255, 51, 51, 51),
                          ),
                          trailing: Transform.scale(
                              scale: 1.3,
                              child: Switch(
                                onChanged: toggleSwitch,
                                value: isSwitched,
                                activeColor: Color.fromARGB(255, 255, 255, 255),
                                activeTrackColor:
                                    Color.fromARGB(255, 44, 123, 168),
                                inactiveThumbColor:
                                    Color.fromARGB(255, 136, 136, 136),
                                inactiveTrackColor:
                                    Color.fromARGB(255, 182, 173, 173),
                              )),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TV ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Last connected 03/06 ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    //color: Color.fromARGB(255, 222, 238, 238),
                    child: Center(
                      child: ListTile(
                          leading: Icon(
                            Icons.menu,
                            color: Color.fromARGB(255, 51, 51, 51),
                          ),
                          trailing: Transform.scale(
                              scale: 1.3,
                              child: Switch(
                                onChanged: toggleSwitch,
                                value: isSwitched,
                                activeColor: Color.fromARGB(255, 255, 255, 255),
                                activeTrackColor:
                                    Color.fromARGB(255, 44, 123, 168),
                                inactiveThumbColor:
                                    Color.fromARGB(255, 136, 136, 136),
                                inactiveTrackColor:
                                    Color.fromARGB(255, 182, 173, 173),
                              )),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Laptop ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Last connected 03/06 ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
