import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const GeeksForGeeks());
}

class GeeksForGeeks extends StatelessWidget {
  const GeeksForGeeks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      color: Colors.blue,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeActivity'),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Activity1()));
            },
            child: Text("Button1")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Activity2()));
            },
            child: Text("Button2")),
      ]),
    );
  }
}

class Activity1 extends StatelessWidget {
  const Activity1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity1'),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Activity2()));
            },
            child: Text("Button2")),
      ]),
    );
  }
}

class Activity2 extends StatelessWidget {
  const Activity2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity2'),
        centerTitle: true,
        toolbarHeight: 60,
      ),
    );
  }
}
