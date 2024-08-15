import 'package:flutter/material.dart';
import 'package:tiktok/config/app_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        // nếu không check mounted thì Buidld Connect sẽ bị huỷ trước khi gọi Navigator
        Navigator.pushNamed(context, AppRoute.mainScreen);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/logo.png'),
          ),
          Text(
            'TikTok',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ));
  }
}
