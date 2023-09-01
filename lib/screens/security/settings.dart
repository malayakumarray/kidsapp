import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/schedulemanager/schedulemanager.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Wi-Fi Settings",
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
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.03,
              // ),
              // Text("Create Time Schedule",
              //     style: TextStyle(

              //         //fontWeight: FontWeight.bold,
              //         fontSize: 18,
              //         fontWeight: FontWeight.bold,
              //         color: Color.fromARGB(255, 65, 65, 65))),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.019,
              // ),
              Container(
                padding: EdgeInsets.only(left: 17),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.08,
                color: Color.fromARGB(255, 212, 212, 212),
                child: Text("Available Networks",
                    style: TextStyle(

                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 65, 65))),
              ),

              Container(
                padding: EdgeInsets.only(left: 17),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.08,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Text("Main WiFi",
                    style: TextStyle(

                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 65, 65))),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.02,
              // ),

              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05),
                child: Text("Wi-Fi Name (SSID)",
                    style: TextStyle(

                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 65, 65))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                alignment: Alignment.center,
                color: Color.fromARGB(255, 236, 236, 236),
                height: MediaQuery.of(context).size.height * 0.055,
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
                    hintText: "enter a name ",
                    labelText: 'Home Wi-Fi 2998',
                    labelStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 44, 44, 44)),
                    prefixIcon: Icon(Icons.bolt_outlined,
                        color: Color.fromARGB(255, 54, 54, 54)),
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
                child: Text("Password",
                    style: TextStyle(

                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 65, 65))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                alignment: Alignment.center,
                color: Color.fromARGB(255, 236, 236, 236),
                height: MediaQuery.of(context).size.height * 0.055,
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
                    hintText: "Enter A Password ",
                    labelText: '*******',
                    labelStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 44, 44, 44)),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp,
                        color: Color.fromARGB(255, 54, 54, 54)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Divider(
                color: Color.fromARGB(255, 179, 179, 179),
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.025,
              // ),
              Container(
                padding: EdgeInsets.only(left: 17),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.08,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Text("Guest WiFi ",
                    style: TextStyle(

                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 65, 65))),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.02,
              // ),

              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05),
                child: Text("Wi-Fi Name (SSID)",
                    style: TextStyle(

                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 65, 65))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                alignment: Alignment.center,
                color: Color.fromARGB(255, 236, 236, 236),
                height: MediaQuery.of(context).size.height * 0.055,
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
                    hintText: "enter a name ",
                    labelText: 'Guest Wi-Fi 2998',
                    labelStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 44, 44, 44)),
                    prefixIcon: Icon(Icons.bolt_outlined,
                        color: Color.fromARGB(255, 54, 54, 54)),
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
                child: Text("Password",
                    style: TextStyle(

                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 65, 65, 65))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                alignment: Alignment.center,
                color: Color.fromARGB(255, 236, 236, 236),
                height: MediaQuery.of(context).size.height * 0.055,
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
                    hintText: "Enter A Password ",
                    labelText: '*******',
                    labelStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 44, 44, 44)),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp,
                        color: Color.fromARGB(255, 54, 54, 54)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.021,
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

              // Transform.scale(
              //     scale: 1.2,
              //     child: Switch(
              //       // onChanged: toggleSwitch,
              //       // value: isSwitched,
              //       activeColor: Color.fromARGB(255, 255, 255, 255),
              //       activeTrackColor:
              //           Color.fromARGB(255, 26, 200, 243),
              //       inactiveThumbColor:
              //           Color.fromARGB(255, 99, 99, 99),
              //       inactiveTrackColor:
              //           Color.fromARGB(255, 202, 202, 202),
              //     )),

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
                        height: MediaQuery.of(context).size.height * 0.065,
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
                        height: MediaQuery.of(context).size.height * 0.061,
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
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.021,
              ),
            ],
          ),
        )));
    //  SizedBox(
    //   height: MediaQuery.of(context).size.height * 0.02,
    // );
  }
}
