import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/security/settings.dart';
import 'package:kidsapp/screens/statuspage/managerouter.dart';

import '../deviceinfo/devicemanager.dart';
import '../schedulemanager/schedulemanager.dart';

class swichrouter extends StatefulWidget {
  const swichrouter({Key? key}) : super(key: key);

  @override
  State<swichrouter> createState() => _swichrouterState();
}

class _swichrouterState extends State<swichrouter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            setState(() {});
          },
          child: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Center(
          child: Text(
            "Swich Router",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 48, 48, 48)),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 50,
            child: Opacity(
              opacity: 1,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Positioned(
                  top: 200,
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: Opacity(
                    opacity: 1,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () =>
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                  builder: (context) => const devicemanager(),
                                )),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    child: Center(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.computer,
                                          size: 40,
                                          color:
                                              Color.fromARGB(255, 26, 200, 243),
                                        ),
                                        Text(
                                          "Device Manager",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ))),
                              ),
                              InkWell(
                                onTap: () =>
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                  builder: (context) => const schedule(),
                                )),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    child: Center(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.lock_clock,
                                          size: 40,
                                          color:
                                              Color.fromARGB(255, 26, 200, 243),
                                        ),
                                        Text(
                                          "Scduled Time",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ))),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(MaterialPageRoute(
                                    builder: (context) => const managerouter(),
                                  ));
                                },
                                child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    child: Center(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.safety_check,
                                          size: 40,
                                          color:
                                              Color.fromARGB(255, 26, 200, 243),
                                        ),
                                        Text(
                                          "Device status",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ))),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const settings()));
                                },
                                child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    child: Center(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.security,
                                          size: 40,
                                          color:
                                              Color.fromARGB(255, 26, 200, 243),
                                        ),
                                        Text(
                                          "security",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ))),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
