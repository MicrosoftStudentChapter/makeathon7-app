import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:makeathon7/core/pages/login_page.dart';
import 'package:makeathon7/theme/app_pallete.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } else {
      Firebase.app();
    }
  } catch (e) {
    debugPrint("Firebase initialization error: $e");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makeathon7',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scrollbarTheme: ScrollbarThemeData().copyWith(
          thumbColor: WidgetStatePropertyAll(AppPallete.whiteOpac),
        ),
      ),
      home: LoginPage(),
    );
  }
}
