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
                  MaterialPageRoute(builder: (context) => Activity1("This is Activity 1")),
);
            },
            child: Text("Button1")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Activity2("This is Activity 2")));
            },
            child: Text("Button2")),
      ]),
    );
  }
}

class Activity1 extends StatelessWidget {
  String msg;
   Activity1(this.msg,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Activity2("This is Activity 2")));
            },
            child: Text("Button2")),
      ]),
    );
  }
}


class Activity2 extends StatelessWidget {
  String msg;
   Activity2(this.msg,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        centerTitle: true,
        toolbarHeight: 60,
      ),
    );
  }
}