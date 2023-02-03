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
      "title": "Title No 1",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IDh5SbD4BlOlVACIte8Z631jthBV2oyWTQ&usqp=CAU"
    },
    {
      "title": "Title No 2",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IDh5SbD4BlOlVACIte8Z631jthBV2oyWTQ&usqp=CAU"
    },
    {
      "title": "Title No 3",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IDh5SbD4BlOlVACIte8Z631jthBV2oyWTQ&usqp=CAU"
    },
    {
      "title": "Title No 4",
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
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 1,childAspectRatio: 1.2),
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                MySnackBar(MyItems[index]["title"]!, context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                child:
                    Image.network(MyItems[index]["image"]!, fit: BoxFit.fill),
              ),
            );
          },
        ));
  }
}
