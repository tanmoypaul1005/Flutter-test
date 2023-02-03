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
  HomeActivity({Key? key}) : super(key: key);

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  var MyItems = [
    {
      "title": "",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IDh5SbD4BlOlVACIte8Z631jthBV2oyWTQ&usqp=CAU"
    },
    {
      "title": "",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IDh5SbD4BlOlVACIte8Z631jthBV2oyWTQ&usqp=CAU"
    },
    {
      "title": "",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IDh5SbD4BlOlVACIte8Z631jthBV2oyWTQ&usqp=CAU"
    },
    {
      "title": "",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IDh5SbD4BlOlVACIte8Z631jthBV2oyWTQ&usqp=CAU"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          centerTitle: true,
          toolbarHeight: 60,
        ),
        body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                child: Image.network(MyItems[index]["image"]!),
              ),
            );
          },
        ));
  }
}
