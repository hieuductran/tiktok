import 'package:flutter/material.dart';
import 'package:tiktok/config/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.onGenerateRoute,
      title: 'Flutter Demo',
      //TODO: ThemeData (mời cao nhân vào đọc)
      theme: ThemeData.dark(
        /// ThemeData.dark() :
        /// Đây là một factory method của Flutter để tạo ra một theme mặc định sử dụng tông màu tối.
        /// Theme này sẽ thiết lập các thuộc tính mặc định như màu nền, màu chữ, màu các widget... theo kiểu màu tối.
        useMaterial3: true,

        ///useMaterial3 => bool
        ///Cài đặt này kích hoạt việc sử dụng phiên bản mới nhất của hệ thống thiết kế Material, gọi là Material 3.
        ///Đây là phiên bản cập nhật của Material Design, mang lại một số thay đổi về mặt thiết kế và hành vi của các widget.
      ).copyWith(
        ///hàm copyWith
        ///Hàm này được sử dụng để sao chép theme hiện tại và chỉ thay đổi các thuộc tính mà bạn muốn.
        ///Ở đây, bạn đang tạo ra một bản sao của theme ThemeData.dark() với một số tùy chỉnh mới.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),

        ///colorScheme:
        ///ColorScheme là một tập hợp các màu sắc mà Flutter sử dụng để định nghĩa màu cho các thành phần của ứng dụng.

        ///ColorScheme.fromSeed() là một phương thức tạo ColorScheme từ một màu gốc (seedColor).
        ///Trong trường hợp này, màu gốc là Colors.deepPurple, và từ đó Flutter sẽ tạo ra một bộ màu đồng nhất và hài hòa dựa trên màu tím đậm.
        scaffoldBackgroundColor: Colors.black,

        ///Thuộc tính này thiết lập màu nền cho Scaffold, là widget cơ bản của một màn hình Flutter.
        ///Ở đây đặt màu nền là màu đen (Colors.black), đảm bảo rằng nền của các màn hình trong ứng dụng sẽ có màu đen.
      ),
    );
  }
}
