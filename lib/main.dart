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

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          centerTitle: true,
          toolbarHeight: 60,
          actions: [
            IconButton(
                onPressed: () {
                  MySnackBar("This is Comment", context);
                },
                icon: Icon(Icons.comment)),
            IconButton(
                onPressed: () {
                  MySnackBar("This is Settings", context);
                },
                icon: Icon(Icons.settings)),
            IconButton(
                onPressed: () {
                  MySnackBar("This is Email", context);
                },
                icon: Icon(Icons.email)),
            IconButton(
                onPressed: () {
                  MySnackBar("This is SearchBox", context);
                },
                icon: Icon(Icons.search)),
          ],
        ),
        body: Container(
          height: 250,
          width: 250,
          child: Text("Hello World"),
          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.green),
        ));
  }
}
