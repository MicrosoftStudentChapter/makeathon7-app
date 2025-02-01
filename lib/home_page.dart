import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:makeathon7/theme/app_pallete.dart';
import 'package:makeathon7/tracks/tracks_page.dart';
import 'package:makeathon7/tracks/tracks_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = [
    const TracksPage(),
    const TracksWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: AppPallete.backgroundColor,
        buttonBackgroundColor: AppPallete.redColor,
        backgroundColor: AppPallete.navBarBg,
        onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
        items: [
        Icon(Icons.home, size: 30, color: AppPallete.whiteColor,),
        Icon(Icons.pie_chart, size: 30, color: AppPallete.whiteColor,),
        Icon(Icons.timelapse_outlined, size: 30, color: AppPallete.whiteColor,),
        Icon(Icons.person, size: 30, color: AppPallete.whiteColor,),
      ],),
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
    );
  }
}
