import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tiktok/screens/friends/friend_screen.dart';
import 'package:tiktok/screens/home/home_screen.dart';
import 'package:tiktok/screens/inbox/inbox_screen.dart';
import 'package:tiktok/screens/profile/profile_screen.dart';
import 'package:tiktok/store/main/main_screen_store.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _store = MainScreenStore();
  final _widgets = [
    const HomeScreen(),
    const FriendScreen(),
    Container(),
    const InboxScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) => SafeArea(child: _widgets[_store.currentIndex]),
      ),
      bottomNavigationBar: Stack(
        children: [
          Observer(
            builder: (context) => BottomNavigationBar(
              // TODO : BottomNavigationBar (đã tìm hiểu)
              /// bên trong có listener
              /// có currentIndex để giữ tab hiện tại

              onTap: (value) {
                _store.setIndex(value);
              },
              currentIndex: _store
                  .currentIndex, //currentIndex giữ vị trí của mục hiện tại đang được chọn trong thanh điều hướng.
              type: BottomNavigationBarType.fixed,
              //BottomNavigationBarType.fixed là một kiểu điều hướng mà tất cả các mục đều được hiển thị với kích thước và khoảng cách cố định.
              // Điều này phù hợp với các ứng dụng có từ 3-5 mục.
              showSelectedLabels: true,
              // test qua thì dùng để show label khi click chuột vào
              showUnselectedLabels: true,
              iconSize: 30,
              backgroundColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  activeIcon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  activeIcon: Icon(Icons.people),
                  label: 'Friends',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people,
                    color: Colors.transparent,
                  ),
                  activeIcon: Icon(Icons.people, color: Colors.transparent),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  activeIcon: Icon(Icons.chat),
                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  activeIcon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 65,
                height: 35,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
