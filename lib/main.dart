import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok/screens/app/app.dart';

void main() {
  // TODO : cái này dùng để làm gì ? (này khó quá :vv)
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.transparent, // statusBarColor của device trong suốt
  ));
  runApp(const MyApp());
}
