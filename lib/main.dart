import 'package:db_miner/view/screen/home_page.dart';
import 'package:db_miner/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "DB_Miner",
      getPages: [
        GetPage(name: "/splash_screen", page: () => SplashScreen()),
        GetPage(name: "/home_page", page: () => HomePage()),
      ],
    );
  }
}
