import 'package:flutter/material.dart';
import 'package:widgets/screens/Main_screen.dart';
import 'package:widgets/screens/home_screen.dart';
import 'package:widgets/screens/newsfeed_screen.dart';
import 'package:widgets/screens/pre_lim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.from(alpha: 1, red: 0.02, green: 0.345, blue: 0.647)),
      ),
      home: MainScreen() ,
    );
  }
}
