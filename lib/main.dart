import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test/Fragment/AccessAlarmFragment.dart';
import 'package:test/Fragment/ContactMailFragment.dart';
import 'package:test/Fragment/EmailFragment.dart';
import 'package:test/Fragment/HomeFragment.dart';
import 'package:test/Fragment/PeronFragment.dart';
import 'package:test/Fragment/SearchFragment.dart';
import 'package:test/Fragment/SetttingsFragment.dart';

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
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
              title: Text("DefaultTabController"),
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  const Tab(icon: Icon(Icons.home)),
                  const Tab(icon: Icon(Icons.search)),
                  const Tab(icon: Icon(Icons.settings)),
                  const Tab(icon: Icon(Icons.email)),
                  const Tab(icon: Icon(Icons.contact_mail)),
                  const Tab(icon: Icon(Icons.person)),
                  const Tab(icon: Icon(Icons.access_alarm)),
                  const Tab(icon: Icon(Icons.account_circle)),
                ],
              )),
          body: TabBarView(children: [
           HomeFragment(),
           SearchFragment(),
           SetttingsFragment(),
           EmailFragment(),
           ContactMailFragment(),
           PeronFragment(),
           AccessAlarmFragment(),
           AccessAlarmFragment()
          ]),
        ));
  }
}
