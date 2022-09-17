import 'package:flutter/material.dart';
import 'package:tiktok_ui/Pages/plus_add.dart';
import 'package:tiktok_ui/Pages/search.dart';
import 'package:tiktok_ui/Pages/userhome.dart';

import 'account.dart';
import 'inbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _manageBottomNavigation (int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List _pages = [
    UserHome(),
    Search(),
    Plus(),
    Inbox(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _manageBottomNavigation,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}

