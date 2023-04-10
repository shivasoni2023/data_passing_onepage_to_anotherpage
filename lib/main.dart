import 'package:flutter/material.dart';
import 'package:data_passing_onepage_to_anotherpage/loginPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  home: loginPage(),
    );
  }
}

