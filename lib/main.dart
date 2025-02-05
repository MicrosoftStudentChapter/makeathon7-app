import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makeathon7',
      debugShowCheckedModeBanner: false,
      home: const HomePageNavigator(),
    );
  }
}
