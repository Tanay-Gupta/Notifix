// ignore_for_file: prefer_const_constructors, file_names

import 'package:appnewui/Pages/eventpage.dart';
import 'package:appnewui/Pages/homepage.dart';
import 'package:appnewui/Pages/profilenew.dart';
import 'package:appnewui/Pages/profilepage.dart';

import 'package:appnewui/Pages/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int selectedIndex = 0;
  List Pages = [HomePage(), ProfilePage(), EventPage(), SettingsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color(0xffF1E6FF),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Color(0xff6F35A5),
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              activeColor: Color(0xff6F35A5),
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: const Icon(Icons.event),
              title: Text('Events'),
              activeColor: Color(0xff6F35A5),
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Color(0xff6F35A5),
              inactiveColor: Colors.black),
        ],
        selectedIndex: selectedIndex,
        onItemSelected: (index) => setState(() {
          selectedIndex = index;
        }),
        showElevation: false,
      ),
    );
  }
}
