import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/profile/profile.dart';
import 'package:kidsapp/screens/profile/rewardsystem/rewards.dart';
import 'package:kidsapp/screens/profile/rewardsystem/task.dart';

class rewardsystem extends StatefulWidget {
  const rewardsystem({Key? key}) : super(key: key);

  @override
  State<rewardsystem> createState() => _rewardsystemState();
}

class _rewardsystemState extends State<rewardsystem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.settings,
              color: Color.fromARGB(255, 59, 59, 59),
            ),
            Text("   ")
          ],
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
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromARGB(255, 196, 81, 231),
                      Color.fromARGB(255, 193, 55, 235),
                      Color.fromARGB(255, 91, 113, 236),
                      // Color.fromARGB(255, 109, 231, 135),
                      Color.fromARGB(255, 93, 206, 235),
                    ])),
                height: MediaQuery.of(context).size.height * 0.2,
                // margin: EdgeInsets.only(left: 8, right: 8, top: 6),
                padding: EdgeInsets.all(10),
                //color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            // color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          // margin: EdgeInsets.all(2),
                          // padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.14,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.012,
                              // ),

                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg'),
                                backgroundColor:
                                    Color.fromARGB(255, 195, 202, 157),
                                radius: 50,
                              ),
                            ],
                          ),
                        ),
                        //Text("data")
                        // Transform.scale(
                        //     scale: 1.4,
                        //     child: Switch(
                        //       onChanged: toggleSwitch,
                        //       value: isSwitched,
                        //       activeColor:
                        //           Color.fromARGB(255, 255, 255, 255),
                        //       activeTrackColor:
                        //           Color.fromARGB(255, 26, 200, 243),
                        //       inactiveThumbColor:
                        //           Color.fromARGB(255, 99, 99, 99),
                        //       inactiveTrackColor:
                        //           Color.fromARGB(255, 202, 202, 202),
                        //     )),
                        // SizedBox(
                        //   width:
                        //       MediaQuery.of(context).size.width * 0.001,
                        // )
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            // color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          // margin: EdgeInsets.all(2),
                          // padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.14,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.012,
                              // ),

                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: RaisedButton(
                                  // color: Color.fromARGB(255, 165, 223, 238),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                profilepage()));
                                  },
                                  child: Text(
                                    "Return To Profile",
                                    style: TextStyle(
                                        fontSize: 16,
                                        //color: Color.fromARGB(255, 36, 36, 36),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "12 Tokens *",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                  ],
                ),
              ),
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
                              text: 'Task',
                            ),
                            Tab(text: 'Rewards'),
                          ],
                        )),
                        Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.75,

                            ///height: 400, //height of TabBarView
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: TabBarView(
                                children: <Widget>[task(), rewards()]))
                      ]))
            ],
          ),
        )),
      ),
    );
  }
}
