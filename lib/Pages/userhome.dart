import 'package:flutter/material.dart';

import '../posts/post1.dart';
import '../posts/post2.dart';
import '../posts/post3.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {

  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: [
        Post1(),
        Post2(),
        Post3(),
      ],
    );
  }
}
