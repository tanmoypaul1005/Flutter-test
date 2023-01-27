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
        ),
        body: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: [
            TextButton(onPressed: (){}, child: Text("Button1")),
            ElevatedButton(onPressed: (){}, child: Text("Button1")),
            TextButton(onPressed: (){}, child: Text("Button1")),
            TextButton(onPressed: (){}, child: Text("Button1")),
            TextButton(onPressed: (){}, child: Text("Button1")),
          ],
        ));
  }
}
