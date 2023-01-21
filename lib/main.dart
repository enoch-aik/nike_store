import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/screens/home/screen.dart';
import 'package:nike_store/src/res/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375,812),
      builder: (context,_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nike Store',
          theme: appTheme,
          home: const HomeScreen(),
        );
      }
    );
  }
}
