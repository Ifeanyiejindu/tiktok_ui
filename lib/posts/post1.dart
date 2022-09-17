import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/post_template.dart';

class Post1 extends StatelessWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(userName: 'ifeanyiejindu',
        videoDescription: 'this is my second flutter tutorial class ',
        numberOfLikes: '1.2M',
        numberOfComments: '443',
        numberOfShares: '897',
    userPost: Container(
      color: Colors.red,
    ),);
  }
}
