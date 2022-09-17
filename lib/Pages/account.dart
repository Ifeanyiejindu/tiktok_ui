import 'package:flutter/material.dart';
import 'package:tiktok_ui/utils/grid1.dart';
import 'package:tiktok_ui/utils/grid2.dart';

import '../utils/grid3.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(Icons.person_add, color: Colors.black,),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.menu, color: Colors.black,),
            )
          ],
          title: Text('Ifeanyi Ejindu', style: TextStyle(
            color: Colors.black
          ),),
        ),
        body: Column(
          children: [
            //profile picture
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
                ),
              ),
            ),

            //username
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '@ifeanyiejindu', style: TextStyle(
                  color: Colors.black
              )),
            ),



            //followings, followers and likes
            Padding(
              padding: const EdgeInsets.only(top: 8.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('432', style: TextStyle(
                        color: Colors.black)),
                        Text('Following', style: TextStyle(
                            color: Colors.black)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('123', style: TextStyle(
                            color: Colors.black)),
                        Text('Followers', style: TextStyle(
                            color: Colors.black)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('1233', style: TextStyle(
                            color: Colors.black)),
                        Text('Likes', style: TextStyle(
                            color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //buttons for edit, instagram and bookmark
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'Edit Profile', style: TextStyle(
                        color: Colors.black)
                    ),
                  ),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    child: Center(
                      child: Icon(Icons.camera_alt_rounded, color: Colors.black,)
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Icon(Icons.bookmark, color: Colors.black,)
                  ),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey
                    )
                  ),
                ),
              ],
            ),

            //bio here
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Bio here'),
            ),

            //TabBar with grid view
            TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_3x3_outlined, color: Colors.black,),),
              Tab(icon: Icon(Icons.favorite, color: Colors.black),),
              Tab(icon: Icon(Icons.lock, color: Colors.black),),
            ],),

            Expanded(
              child: TabBarView(children: [
                Grid1(),
                Grid2(),
                Grid3(),
              ]),
            )

          ],
        ),
      ),
    );
  }
}
