import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/screens/friends/listfriend.dart';
import 'package:tiktok/screens/friends/widget/friend_item.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Friends',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.person_add,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(
            listFriend.length,
            (index) => FriendItem(
              name: listFriend[index]['name'],
              image: listFriend[index]['avatar'],
              subname: listFriend[index]['subname'],
            ),
          ),
        ),
      ),
    );
  }
}
