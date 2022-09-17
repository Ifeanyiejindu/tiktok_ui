import 'package:flutter/material.dart';
import '../utils/post_template.dart';

class Post2 extends StatelessWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(userName: 'ifeanyiejindu',
        videoDescription: 'this is my second flutter tutorial class ',
        numberOfLikes: '130k',
        numberOfComments: '323',
        numberOfShares: '117',
    userPost: Container(
      color: Colors.orange,
    ),);
  }
}