import 'package:flutter/material.dart';

class ProfileVideo extends StatelessWidget {
  final List<Widget> video;
  const ProfileVideo({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 1,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: video,
    );
  }
}
