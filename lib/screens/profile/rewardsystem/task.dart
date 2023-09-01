import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kidsapp/screens/schedulemanager/schedulemanager.dart';

class task extends StatefulWidget {
  const task({Key? key}) : super(key: key);

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      width: double.infinity,
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              //color: Color.fromARGB(255, 26, 200, 243),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.055,
                  child: FlatButton(
                    color: Color.fromARGB(255, 26, 200, 243),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => schedule()));
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.055,
                  child: FlatButton(
                    color: Color.fromARGB(255, 26, 200, 243),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => schedule()));
                    },
                    child: Text(
                      "Edit",
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
          height: MediaQuery.of(context).size.height * 0.02,
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
            color: Color.fromARGB(255, 170, 170, 170),
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
        )
        //
        ,
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 40, 198, 247),
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
                        "completed",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("06:30PM - 7:30PM")
                    ],
                  )
                ]),
          ),
        ),
        //

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 40, 198, 247),
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
                        "completed",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("06:30PM - 7:30PM")
                    ],
                  )
                ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // Container(
        //   width: MediaQuery.of(context).size.width * 1,
        //   margin: EdgeInsets.only(left: 20),
        //   child: Text(
        //     "Asign To Profiles",
        //     style: TextStyle(
        //         fontSize: 18,
        //         color: Color.fromARGB(255, 36, 36, 36),
        //         fontWeight: FontWeight.bold),
        //   ),
        // ),
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
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
