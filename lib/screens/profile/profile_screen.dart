import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tiktok/screens/profile/widget/profile_buttonmore.dart';
import 'package:tiktok/screens/profile/widget/profile_dividercustom.dart';
import 'package:tiktok/screens/profile/widget/profile_follow.dart';
import 'package:tiktok/screens/profile/widget/profile_item_video.dart';
import 'package:tiktok/screens/profile/widget/profile_video.dart';
import 'package:tiktok/store/main/main_screen_store.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  // TODO : TickerProviderStateMixin , bên dưới nữa :v
  final _store = MainScreenStore();
  TabController? _controller;
  @override
  void initState() {
    _controller = TabController(
        length: 4, vsync: this, initialIndex: _store.currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Trần Đức Hiếu',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.date_range,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              //image
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://ipfs.io/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1091.jpg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Icon(Icons.add),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '@duchieutran.coder',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfileFollow(
                    countFollow: '12',
                    title: 'Đã follow',
                  ),
                  DividerCustom(),
                  ProfileFollow(
                    countFollow: '36,7 N',
                    title: 'Follower',
                  ),
                  DividerCustom(),
                  ProfileFollow(
                    countFollow: '557,5 N',
                    title: 'Thích',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  children: [
                    ProfileButtonMore(
                      title: 'Edit Profile',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfileButtonMore(title: 'Add Friends'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.camera,
                      color: Colors.red,
                    ),
                  ),
                  const Text('Add Yours'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              Observer(
                builder: (context) => TabBar(
                  tabs: const [
                    Tab(icon: Icon(CupertinoIcons.square_grid_4x3_fill)),
                    Tab(icon: Icon(Icons.lock_open)),
                    Tab(icon: Icon(CupertinoIcons.bookmark)),
                    Tab(icon: Icon(CupertinoIcons.heart)),
                  ],
                  controller: _controller,
                  dividerColor: Colors.white12,
                  onTap: (value) {
                    _store.setIndex(value);
                  },
                ),
              ),
              Observer(
                builder: (context) => IndexedStack(
                  index: _store.currentIndex,
                  children: const [
                    ProfileVideo(video: [
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                    ]),
                    ProfileVideo(video: [
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                    ]),
                    ProfileVideo(video: [
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                    ]),
                    ProfileVideo(video: [
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                      ProfileItemVideo(image: 'assets/images/logo.png'),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
