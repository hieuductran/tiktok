import 'package:flutter/material.dart';

class ProfileItemVideo extends StatelessWidget {
  final String image;
  const ProfileItemVideo({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}
