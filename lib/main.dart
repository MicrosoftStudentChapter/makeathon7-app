import 'package:flutter/material.dart';
import 'package:makeathon7/controllers/upload_data.dart';
import 'package:makeathon7/core/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:makeathon7/theme/app_pallete.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
      home: UploadExcelPage(),
    );
  }
}
