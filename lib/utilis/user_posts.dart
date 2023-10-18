import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  final String image;

  UserPosts({
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/profilepic/profile.jpeg',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                  ),
                ],
              ),
              Icon(
                Icons.menu,
              ),
            ],
          ),
        ),

        // post
        Image.asset(
          image,
          fit: BoxFit.contain,
          // height: 400,
        ),
        //  below the post // button and comments

        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        // like by
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by'),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text(
                  'fazzy.rana',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text('and'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text(
                  'others',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),

        // caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'fazzy.rana',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text:
                        ' I turn the dust throwing into riches til im filthy'),
              ],
            ),
          ),
        ),

        // comments
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
