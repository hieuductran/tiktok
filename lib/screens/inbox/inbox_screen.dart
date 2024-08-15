import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/screens/friends/listfriend.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inbox',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.add_circled),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search))
        ],
      ),
      body: ListView.builder(
        itemCount: listFriend.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(listFriend[index]['avatar']),
          ),
          title: Text(
            listFriend[index]['name'],
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: const Text(
            'Here is your message',
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.red.shade700,
              shape: BoxShape.circle,
            ),
            child: Text(
              listFriend[index]['id'],
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
