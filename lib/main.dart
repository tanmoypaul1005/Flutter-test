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
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Tanmoy Paul"),
                  accountEmail: Text("tanmoypaul@gmail.com"),
                  currentAccountPicture: Image.network(
                      "data:image/png;base64,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"),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Contact"),
                onTap: () {}),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
                leading: Icon(Icons.email), title: Text("Email"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.phone), title: Text("Phone"), onTap: () {}),
          ],
        ),
      ),
    );
  }
}
