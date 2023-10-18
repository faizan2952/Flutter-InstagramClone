import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String profileImagePath;
  final String profileName;

  const BubbleStories({
    required this.profileImagePath,
    required this.profileName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              profileImagePath,
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 60,
            child: Text(
              profileName,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
