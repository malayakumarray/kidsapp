import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class deviceinfo extends StatefulWidget {
  const deviceinfo({Key? key}) : super(key: key);

  @override
  State<deviceinfo> createState() => _deviceinfoState();
}

class _deviceinfoState extends State<deviceinfo> {
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
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Device Information",
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
                // height: MediaQuery.of(context).size.height * 1,
                //width: MediaQuery.of(context).size.width * 1,
                //height: MediaQuery.of(context).size.height * 1,
                child: Column(children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  // Container(
                  //     color: Color.fromARGB(255, 255, 255, 255),
                  //     height: MediaQuery.of(context).size.height * 0.06,
                  //     child: Center(
                  //       child: Text(
                  //         "Device Information",
                  //         style: TextStyle(
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.bold,
                  //             color: Color.fromARGB(255, 56, 56, 56)),
                  //       ),
                  //     )),
                  Container(
                      width: MediaQuery.of(context).size.width * 1,
                      alignment: Alignment.center,
                      color: Color.fromARGB(255, 224, 224, 224),
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Text(
                        "Device Name",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 46, 46, 46)),
                      )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    alignment: Alignment.center,
                    color: Color.fromARGB(255, 236, 236, 236),
                    height: MediaQuery.of(context).size.height * 0.05,
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
                            color: Color.fromARGB(255, 224, 224, 224),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 36, 36, 36)),
                        ),
                        hintText: "Enter A Name ",
                        labelText: 'Customise Your Name Here',
                        labelStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 44, 44, 44)),
                        prefixIcon: Icon(Icons.settings,
                            color: Color.fromARGB(255, 54, 54, 54)),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.96,
                    alignment: Alignment.center,
                    color: Color.fromARGB(255, 224, 224, 224),
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Text(
                      "Connection History",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 46, 46, 46)),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: DataTable(
                      dataRowHeight: MediaQuery.of(context).size.height * 0.14,
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 49, 49, 49),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Details',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 46, 46, 46),
                            ),
                          ),
                        ),
                      ],
                      rows: <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "2022-07-19 07:41:08",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 56, 56, 56)),
                                ),
                                Text("MAC Address"),
                                Text("IP Address"),
                                Text("Connection Type")
                              ],
                            )),
                            DataCell(Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Current",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 56, 56, 56)),
                                ),
                                Text("1878.78.788.99"),
                                Text("22:1907:41:0"),
                                Text("wireless")
                              ],
                            )),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(""),
                                Text(
                                  "2022-07-19 07:41:08",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 56, 56, 56)),
                                ),
                                Text("MAC Address"),
                                Text("IP Address"),
                                Text("Connection Type")
                              ],
                            )),
                            DataCell(Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 56, 56, 56)),
                                ),
                                Text("1878.78.788.99"),
                                Text("22:1907:41:0"),
                                Text("wireless")
                              ],
                            )),
                          ],
                        ),
                      ],
                    ),
                  )
                ]))));
  }
}
