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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(height: 100,width: 100,child: Image.network("https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/300960294_101330042720115_301174734956893395_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGU-y7KIBKJAlemJQn-emzX1cudNoqjMMLVy502iqMwwtGT91X64AxXUwzBwnSMsmR2ns_4dtfEL7AIGn9K8w-s&_nc_ohc=7fRnziHfKt8AX8EShBW&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBK5ugZrBBo8VSFMD8Dlv-dQXEMbGj56VB_ePKs86SEZg&oe=63D9045C"),)
          ],
        ));
  }
}
