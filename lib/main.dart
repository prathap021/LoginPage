// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: wiki(),
    );
  }
}

class wiki extends StatefulWidget {
  const wiki({Key? key}) : super(key: key);

  @override
  _wikiState createState() => _wikiState();
}

class _wikiState extends State<wiki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Center(
          child: Center(
              child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 80),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Spell4Wiki.png/220px-Spell4Wiki.png'),
              backgroundColor: Colors.indigo,
              radius: 60,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                'wiki Login',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500),
              )),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, bottom: 10, top: 10),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter Username')),
          ),
          Padding(
              padding:
                  EdgeInsets.only(left: 25, right: 25, bottom: 10, top: 10),
              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password'))),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 100.0, right: 100.0, top: 5, bottom: 5),
                  child: Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                )),
          ),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'forgot your password ?',
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: 30.0, right: 10.5, top: 15.5, bottom: 10.5),
                padding:
                    EdgeInsets.only(left: 20, right: 30, top: 7, bottom: 7),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87, width: 1),
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  'Join Wiki',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.teal),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 10, right: 30, top: 15.5, bottom: 10.5),
                padding:
                    EdgeInsets.only(left: 25, right: 25, top: 7, bottom: 7),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87, width: 1),
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  'Skip Login ',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.teal),
                ),
              ),
            ],
          ),
        ],
      )))
    ])));
  }
}
