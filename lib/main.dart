import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app1/screen/newsScreen.dart';
import 'package:news_app1/screen/news_screen/newsScreen2.dart';
import 'package:news_app1/screen/news_screen/news_screen.dart';
import 'package:news_app1/screen/news_screen/news_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //final ApiService apiService = Get.put(ApiService());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsScreen2(),
    );
  }
}