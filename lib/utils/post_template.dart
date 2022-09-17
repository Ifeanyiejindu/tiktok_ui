import 'package:flutter/material.dart';

import 'buttons.dart';

class PostTemplate extends StatelessWidget {
  final String userName;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  PostTemplate({
    required this.userName,
    required this.videoDescription,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
    required this.userPost
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          //images or video behind post details
          userPost,

          //post details
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //username
                  Text('@'+ userName,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),),

                  SizedBox(height: 10,),

                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: videoDescription),
                        TextSpan(text: '#flutter #ifeanyiejindu #mitchkoko', style: TextStyle(
                            fontWeight: FontWeight.bold
                        ))
                      ]
                  ))


                  //caption
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1,1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Buttons(icon: Icons.favorite_rounded, number: numberOfLikes),
                  Buttons(icon: Icons.chat_bubble_rounded, number: numberOfComments),
                  Buttons(icon: Icons.send, number: numberOfShares),
                  SizedBox(height: 60,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
