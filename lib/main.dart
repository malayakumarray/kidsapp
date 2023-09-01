import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kidsapp/screens/deviceinfo/devicemanager.dart';
import 'package:kidsapp/screens/myhomepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initstate() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(backgroundColor: Color.fromARGB(255, 255, 255, 255)),
        home: Scaffold(
          body: myhomepage(),
        ));
  }
}
