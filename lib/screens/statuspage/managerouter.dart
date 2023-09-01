import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/statuspage/speed.dart';
import 'package:kidsapp/screens/statuspage/status.dart';

class managerouter extends StatefulWidget {
  const managerouter({Key? key}) : super(key: key);

  @override
  State<managerouter> createState() => _managerouterState();
}

class _managerouterState extends State<managerouter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              actions: [
                Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 59, 59, 59),
                ),
                Text("   ")
              ],
              centerTitle: true,
              title: Text(
                "Manage Router",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 56, 56, 56)),
              ),
              backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
                child: Container(
                    child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Column(children: [
                  DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                                child: TabBar(
                              labelColor: Color.fromARGB(255, 40, 198, 247),
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(
                                  text: 'Statu',
                                ),
                                Tab(text: 'Speed'),
                              ],
                            )),
                            Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.8,

                                ///height: 400, //height of TabBarView
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5))),
                                child: TabBarView(
                                    children: <Widget>[status(), speed()]))
                          ]))
                ]),
              )
            ])))));
  }
}
