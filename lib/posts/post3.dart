import 'package:flutter/material.dart';

import '../utils/post_template.dart';

class Post3 extends StatelessWidget {
  const Post3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(userName: 'ifeanyiejindu',
        videoDescription: 'this is my second flutter tutorial class ',
        numberOfLikes: '42M',
        numberOfComments: '123k',
        numberOfShares: '1.3M',
    userPost: Container(
      color: Colors.blue,
    ),);
  }
}