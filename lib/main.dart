import 'package:Cokitchen/screens/screen_wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cokitchen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'GoogleSans'
      ),
      home: ScreenWrapper(),
    );
  }
}

