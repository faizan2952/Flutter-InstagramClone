import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../utilis/bubble_stories.dart';
import '../utilis/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    ['assets/profilepic/profile1.jpg', 'Evan Richard'],
    ['assets/profilepic/profile2.jpeg', 'Steve Rogers'],
    ['assets/profilepic/profile3.jpg', 'Edward Norton'],
    ['assets/profilepic/profile4.jpg', 'Natalie Portman'],
    ['assets/profilepic/profile5.jpg', 'Asad Khurram'],
  ];

  final List bubbleStorieContent = [
    // [ProfileImagePath, ProfileName]
    ['assets/profilepic/profile1.jpg', 'Evan Richard'],
    ['assets/profilepic/profile2.jpeg', 'Steve Rogers'],
    ['assets/profilepic/profile3.jpg', 'Edward Norton'],
    ['assets/profilepic/profile4.jpg', 'Natalie Portman'],
    ['assets/profilepic/profile5.jpg', 'Asad Khurram'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 110,
        title: Image.asset(
          'assets/icons/instagram.png',
          width: 110,
          height: 110,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.heart,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(IconlyLight.message),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/profilepic/profile.jpeg',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                        width: 64,
                        child: Text(
                          'fazzy.rana',
                          overflow: TextOverflow.ellipsis,
                        )),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .74,
                    height: 85,
                    // color: Colors.blue,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bubbleStorieContent.length,
                      itemBuilder: (context, index) {
                        return BubbleStories(
                          profileImagePath: bubbleStorieContent[index][0],
                          profileName: bubbleStorieContent[index][1],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(
                  name: people[index][1],
                  image: people[index][0],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
