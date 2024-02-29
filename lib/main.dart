
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Test/splash_screen.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SplashScreen(),
    );
  }
}
