import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class setapplimit extends StatefulWidget {
  const setapplimit({Key? key}) : super(key: key);

  @override
  State<setapplimit> createState() => _setapplimitState();
}

class _setapplimitState extends State<setapplimit> {
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
                child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: double.infinity,
                  child: Text(
                    "Select Which App You Want To Set Limit",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 68, 68, 68),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 230, 228, 228),
                  width: double.infinity,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.055,
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.015,
                    ),
                    padding: EdgeInsets.all(0),
                    child: TextFormField(
                      // onChanged: (val) {
                      //   setState(() {
                      //     email = val;
                      //   });
                      // },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 14, 14, 14)),
                        ),
                        hintText: "Search App From Webside",
                        // labelText: '     Email Id',
                        labelStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 83, 83)),
                        prefixIcon: Icon(Icons.search,
                            color: Color.fromARGB(255, 85, 83, 83)),
                        suffixIcon: Icon(Icons.mic,
                            color: Color.fromARGB(255, 85, 83, 83)),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 1,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.whatsapp,
                    size: 45,
                    color: Color.fromARGB(255, 16, 241, 84),
                  ),
                  title: Text(
                    "Whatsapp",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                  ),
                  trailing: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 230, 230, 230),
                      ),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 68, 68),
                        ),
                      )),
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 1,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.whatsapp,
                    size: 45,
                    color: Color.fromARGB(255, 16, 241, 84),
                  ),
                  title: Text(
                    "Whatsapp",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                  ),
                  trailing: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 230, 230, 230),
                      ),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 68, 68),
                        ),
                      )),
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 1,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.whatsapp,
                    size: 45,
                    color: Color.fromARGB(255, 16, 241, 84),
                  ),
                  title: Text(
                    "Whatsapp",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                  ),
                  trailing: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 230, 230, 230),
                      ),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 68, 68),
                        ),
                      )),
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 1,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.whatsapp,
                    size: 45,
                    color: Color.fromARGB(255, 16, 241, 84),
                  ),
                  title: Text(
                    "Whatsapp",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                  ),
                  trailing: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 230, 230, 230),
                      ),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 68, 68),
                        ),
                      )),
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 1,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.whatsapp,
                    size: 45,
                    color: Color.fromARGB(255, 16, 241, 84),
                  ),
                  title: Text(
                    "Whatsapp",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                  ),
                  trailing: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 230, 230, 230),
                      ),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 68, 68),
                        ),
                      )),
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 1,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.whatsapp,
                    size: 45,
                    color: Color.fromARGB(255, 16, 241, 84),
                  ),
                  title: Text(
                    "Whatsapp",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                  ),
                  trailing: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 230, 230, 230),
                      ),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 68, 68),
                        ),
                      )),
                ),
              ],
            )),
          )),
    );
  }
}
