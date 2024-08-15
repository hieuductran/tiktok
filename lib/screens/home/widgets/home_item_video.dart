import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/screens/home/widgets/home_icon_react.dart';
import 'package:video_player/video_player.dart';

class HomeItemVideo extends StatefulWidget {
  final String url, title;
  const HomeItemVideo({super.key, required this.url, required this.title});

  @override
  State<HomeItemVideo> createState() => _HomeItemVideoState();
}

class _HomeItemVideoState extends State<HomeItemVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO : VideoPlayerController dùng vui nè (đã xem)
    _controller = VideoPlayerController.asset(
        'assets/videos/${widget.url}'); // truy cập assets video
    _controller.addListener(() {}); // lắng nghe sự kiện, chưa biết dùng làm gì
    _controller.setLooping(true); // bật chế độ lặp lại
    _controller.initialize(); // khởi tạo video
    _controller.play(); // phát video
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
            onTap: () {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            },
            child: VideoPlayer(_controller)),
        Positioned(
          left: 20,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Text('Sub title hehe #xuhuong, #hevcl =)))'),
            ],
          ),
        ),
        const Positioned(
            right: 15,
            bottom: 100,
            child: Column(
              children: [
                // Stack(
                //   children: [
                //     CircleAvatar(
                //       radius: 15,
                //       backgroundColor: Colors.white,
                //     ),
                //     Positioned(
                //       left: 3,
                //       bottom: -10,
                //       child: Icon(
                //         Icons.add,
                //         color: Colors.red,
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                HomeIconReact(icon: CupertinoIcons.heart_fill, text: '28.5k'),
                HomeIconReact(icon: Icons.comment, text: '4K'),
                HomeIconReact(icon: CupertinoIcons.bookmark_fill, text: '10'),
                HomeIconReact(icon: FluentIcons.share_16_regular, text: '2202'),
              ],
            ))
      ],
    );
  }
}
