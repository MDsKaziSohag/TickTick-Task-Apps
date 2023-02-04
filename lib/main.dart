import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kazisohagapps/UI/ViewsAll/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 800),
        builder: (_, child) {
          return GetMaterialApp(
            
            debugShowCheckedModeBanner: false,
            title: 'Bank aplication',
            home: NavBarPage(),
          );
        });
  }
}
