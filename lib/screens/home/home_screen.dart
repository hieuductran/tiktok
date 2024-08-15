import 'package:flutter/material.dart';
import 'package:tiktok/screens/home/widgets/home_item_video.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.vertical,
          children: const [
            
            HomeItemVideo(url: 'video_1.mp4', title: 'Trần Đức Hiếu'),
            HomeItemVideo(url: 'video_2.mp4', title: 'Trần Đức Hiếu'),
            HomeItemVideo(url: 'video_3.mp4', title: 'Trần Đức Hiếu'),
          ],
        )
      ],
    );
  }
}
