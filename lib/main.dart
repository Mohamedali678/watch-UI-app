import 'package:flutter/material.dart';
import 'package:watch_brand_app/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: const Color(0xffffd691),
            scaffoldBackgroundColor: const Color(0xff233A66))),
  );
}
