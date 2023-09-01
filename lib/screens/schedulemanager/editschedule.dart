import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/schedulemanager/schedulemanager.dart';

class editschedule extends StatefulWidget {
  const editschedule({Key? key}) : super(key: key);

  @override
  State<editschedule> createState() => _editscheduleState();
}

class _editscheduleState extends State<editschedule> {
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
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Delete",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 0, 0),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
              title: Text(
                "Edit Time Schedule",
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
                          fontSize: 18,
                          color: Color.fromARGB(255, 36, 36, 36),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 114, 114, 114),
                    ),
                    height: MediaQuery.of(context).size.height * 0.12,
                    margin: EdgeInsets.only(top: 6),
                    padding: EdgeInsets.only(left: 10, right: 5),
                    width: MediaQuery.of(context).size.width * 0.95,
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 238, 238, 238),
                      ),
                      height: MediaQuery.of(context).size.height * 0.11,
                      margin: EdgeInsets.only(left: 10),
                      //padding: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get Off Internet 1 Hour Before Bed",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "In Process",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text("06:30PM - 7:30PM")
                              ],
                            )
                          ]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: DataTable(
                      dataRowHeight: MediaQuery.of(context).size.height * 0.14,
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            '',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 49, 49, 49),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "             Allowed Apps",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 36, 36, 36),
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                      rows: <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2013/05/11/08/28/sunset-110305_1280.jpg'),
                                  backgroundColor:
                                      Color.fromARGB(255, 195, 202, 157),
                                  radius: 35,
                                ),
                                Text(
                                  "Anna",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 56, 56, 56)),
                                ),
                              ],
                            )),
                            DataCell(Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 49, 49, 49),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.06,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      child: RaisedButton(
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                        onPressed: () {},
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 63, 63, 63),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2013/05/11/08/28/sunset-110305_1280.jpg'),
                                  backgroundColor:
                                      Color.fromARGB(255, 195, 202, 157),
                                  radius: 35,
                                ),
                                Text(
                                  "Anna",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 56, 56, 56)),
                                ),
                              ],
                            )),
                            DataCell(Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 49, 49, 49),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.06,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      child: RaisedButton(
                                        color:
                                            Color.fromARGB(255, 226, 226, 226),
                                        onPressed: () {},
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 63, 63, 63),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Divider(
                  //   color: Color.fromARGB(255, 179, 179, 179),
                  //   height: 25,
                  //   thickness: 2,
                  //   indent: 5,
                  //   endIndent: 5,
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Center(
                        child: FlatButton(
                      onPressed: () {},
                      child: Text("+ Assign",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 0, 196, 245),
                          )),
                    )),
                  ),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              color: Color.fromARGB(255, 202, 202, 202),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => schedule()));
                              },
                              child: Text(
                                "Disgard Schedule",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 36, 36, 36),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              color: Color.fromARGB(255, 26, 200, 243),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => schedule()));
                              },
                              child: Text(
                                "Save Changes",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 36, 36, 36),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.051,
                  ),
                ],
              ),
            )))
        //  SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.02,
        );
  }
}
