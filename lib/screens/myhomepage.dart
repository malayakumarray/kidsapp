import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/opacity.dart';
import 'package:kidsapp/screens/deviceinfo/devicemanager.dart';
import 'package:kidsapp/screens/navbar/switchrouter.dart';
import 'package:kidsapp/screens/profile/profile.dart';
import 'package:kidsapp/screens/schedulemanager/schedulemanager.dart';
import 'package:kidsapp/screens/security/settings.dart';
import 'package:kidsapp/screens/statuspage/managerouter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class myhomepage extends StatefulWidget {
  const myhomepage({Key? key}) : super(key: key);

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  bool viewall = false;
  bool drawer = false;
  bool navigation = false;
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              setState(() {
                _onbuttonpressed();
                navigation == true;
              });
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
              "Jtxtream",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 48, 48, 48)),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.alarm,
                  size: 30,
                  color: Color.fromARGB(255, 48, 48, 48),
                ))
          ],
          // leading: IconButton(
          //   icon: const Icon(
          //     Icons.menu,
          //     color: Color.fromARGB(255, 110, 218, 235),
          //   ),
          //   //tooltip: 'Menu Icon',
          //   onPressed: () {
          //     setState(() {
          //       drawer = true;
          //     });
          //   },
          // ),
          //systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: SingleChildScrollView(
          child: Container(
              color: Color.fromARGB(255, 224, 224, 224),
              alignment: Alignment.center,
              width: double.infinity,
              // height: drawer
              //     ? MediaQuery.of(context).size.height * 2
              //     : MediaQuery.of(context).size.height * 0.9,
              child: Column(children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          Color.fromARGB(255, 0, 133, 167),
                          Color.fromARGB(255, 81, 208, 240),
                          Color.fromARGB(255, 0, 133, 167),
                          Color.fromARGB(255, 42, 202, 241),
                          Color.fromARGB(255, 0, 133, 167),
                        ])),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    // color: Color.fromARGB(255, 85, 100, 236),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text("Chair Yun",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text("Connected",
                                    style: TextStyle(

                                        //fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 0, 206, 27))),
                              ),
                            ],
                          ),
                          // Container(
                          //     width: 160,
                          //     height: 60,
                          //     alignment: Alignment.center,
                          //     child: Icon(
                          //       Icons.wifi,
                          //       size: 60,
                          //     )
                          //     // Image.asset(
                          //     //   'assets/undraw_connected_world_wuay.png',
                          //     //   width: 160,
                          //     //   height: 60,
                          //     //   fit: BoxFit.cover,
                          //     // ),
                          //     ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.keyboard_arrow_right_sharp,
                              size: 60,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 0,
                ),
                SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: viewall
                        ? MediaQuery.of(context).size.height * 0.4
                        : MediaQuery.of(context).size.height * 0.25,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    // color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              alignment: Alignment.topLeft,
                              child: viewall
                                  ? Text(
                                      "Profile ( All )",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    )
                                  : Text(
                                      "Profile (2)",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                            ),
                            if (viewall == false)
                              FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      viewall = true;
                                    });
                                  },
                                  child: Text(
                                    "View All",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 26, 200, 243),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )),
                            if (viewall == true)
                              FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      viewall = false;
                                    });
                                  },
                                  child: Text(
                                    "Close",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context, rootNavigator: true)
                                    .push(MaterialPageRoute(
                                  builder: (context) => const profilepage(),
                                ));
                              },
                              child: Center(
                                child: CircularPercentIndicator(
                                  animation:
                                      true, //animation to show progress at first
                                  animationDuration: 500,
                                  radius: 40.0,
                                  lineWidth: 10.0,
                                  percent: 1,
                                  center: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://th.bing.com/th/id/R.72380963a35b3fba67398022db5ae99d?rik=ga0xsfijaETFdQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-NP0zmaopjRE%2fUhhnlfaNsrI%2fAAAAAAAAEuE%2fZ5HQX6Jhqik%2fs1600%2fa%2b(9).jpg&ehk=AGheMSErLhbTXsly541CsCFJA95DVaC6Hd3vxS6KKFU%3d&risl=&pid=ImgRaw&r=0'),
                                    backgroundColor:
                                        Color.fromARGB(255, 209, 205, 205),
                                    radius: 35,
                                  ),
                                  progressColor:
                                      Color.fromARGB(255, 202, 238, 43),
                                ),
                              ),
                            
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context, rootNavigator: true)
                                    .push(MaterialPageRoute(
                                  builder: (context) => const profilepage(),
                                ));
                              },
                              child: Center(
                                child: CircularPercentIndicator(
                                  animation:
                                      true, //animation to show progress at first
                                  animationDuration: 500,
                                  radius: 40.0,
                                  lineWidth: 10.0,
                                  percent: 1,
                                  center: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://th.bing.com/th/id/R.72380963a35b3fba67398022db5ae99d?rik=ga0xsfijaETFdQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-NP0zmaopjRE%2fUhhnlfaNsrI%2fAAAAAAAAEuE%2fZ5HQX6Jhqik%2fs1600%2fa%2b(9).jpg&ehk=AGheMSErLhbTXsly541CsCFJA95DVaC6Hd3vxS6KKFU%3d&risl=&pid=ImgRaw&r=0'),
                                    backgroundColor:
                                        Color.fromARGB(255, 209, 205, 205),
                                    radius: 35,
                                  ),
                                  progressColor:
                                      Color.fromARGB(255, 43, 215, 238),
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   width: 10,

                            // SizedBox(
                            //   width: 10,
                            // ),
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 190, 190, 190),
                              radius: 40,
                              child: Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 50,
                              ),
                            ),
                          ],
                        ),
                        if (viewall == true)
                          SizedBox(
                            height: 20,
                          ),
                        if (viewall == true)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2013/05/11/08/28/sunset-110305_1280.jpg'),
                                backgroundColor:
                                    Color.fromARGB(255, 195, 202, 157),
                                radius: 40,
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2013/05/11/08/28/sunset-110305_1280.jpg'),
                                backgroundColor:
                                    Color.fromARGB(255, 231, 205, 205),
                                radius: 40,
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2013/05/11/08/28/sunset-110305_1280.jpg'),
                                backgroundColor:
                                    Color.fromARGB(255, 155, 141, 141),
                                radius: 40,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
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
                                width: MediaQuery.of(context).size.width * 0.45,
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.computer,
                                      size: 40,
                                      color: Color.fromARGB(255, 26, 200, 243),
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
                                width: MediaQuery.of(context).size.width * 0.45,
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.lock_clock,
                                      size: 40,
                                      color: Color.fromARGB(255, 26, 200, 243),
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
                                width: MediaQuery.of(context).size.width * 0.45,
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.safety_check,
                                      size: 40,
                                      color: Color.fromARGB(255, 26, 200, 243),
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
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      builder: (context) => const settings()));
                            },
                            child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                width: MediaQuery.of(context).size.width * 0.45,
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.security,
                                      size: 40,
                                      color: Color.fromARGB(255, 26, 200, 243),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                )
              ])),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('Top'),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('Bottom'),
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomAppBar(
        //   elevation: 0,
        //   color: Color(0xff344955),
        //   child: Container(
        //     padding: EdgeInsets.symmetric(horizontal: 10.0),
        //     height: 56.0,
        //     child: Row(children: <Widget>[
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.add),
        //         color: Colors.white,
        //       ),
        //       // Icon(
        //       //  // onPressed: showMenu,
        //       //   icon: Icon(Icons.menu),
        //       //   color: Colors.white,
        //       // ),
        //       Spacer(),
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.add),
        //         color: Colors.white,
        //       )
        //     ]),

        // drawer: Drawer(
        //   // Add a ListView to the drawer. This ensures the user can scroll
        //   // through the options in the drawer if there isn't enough vertical
        //   // space to fit everything.
        //   child: ListView(
        //     // Important: Remove any padding from the ListView.
        //     padding: EdgeInsets.zero,
        //     children: [
        //       const DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Color.fromARGB(255, 140, 240, 235),
        //         ),
        //         child: Text('Drawer Header'),
        //       ),
        //       ListTile(
        //         title: const Text('Item 1'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           //Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Item 2'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           //Navigator.pop(context);
        //         },
        //       ),
        //     ],
        //   ),
      ),
    );
  }

  void _onbuttonpressed() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.001,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 15,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Swich Router"),
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                            builder: (context) => const swichrouter()));
                  },
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 15,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Accountsetting"),
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 15,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(Icons.messenger_outline_sharp),
                  title: Text("Easy Meshup"),
                  onTap: () {},
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 15,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.blur_circular_rounded,
                  ),
                  title: Text("Check FOR update"),
                  onTap: () {},
                ),
                Divider(
                  color: Color.fromARGB(255, 192, 192, 192),
                  height: 15,
                  thickness: 1,
                  indent: 2,
                  endIndent: 5,
                ),
              ],
            ),
          );
        });
  }
}
