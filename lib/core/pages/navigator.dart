import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/homepage/home_page.dart';
import 'package:makeathon7/core/pages/map/map.dart';
import 'package:makeathon7/core/pages/profile/profile.dart';
import 'package:makeathon7/core/pages/timeline/timeline.dart';
import 'package:makeathon7/theme/app_pallete.dart';
import 'package:makeathon7/core/pages/tracks/tracks_page.dart';


class HomePageNavigator extends StatefulWidget {
  const HomePageNavigator({super.key});

  @override
  State<HomePageNavigator> createState() => _HomePageNavigatorState();
}

class _HomePageNavigatorState extends State<HomePageNavigator> {

  int currentPage = 0;

  List<Widget> pages = [
    const HomePage(),
    const TracksPage(),
    const TimelinePage(),
    const MapPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
        Icon(Icons.home, size: MediaQuery.of(context).size.width / 13, color: AppPallete.whiteColor,),
        Icon(Icons.pie_chart, size: MediaQuery.of(context).size.width / 13, color: AppPallete.whiteColor,),
        Icon(Icons.timelapse_outlined, size: MediaQuery.of(context).size.width / 13, color: AppPallete.whiteColor,),
        Icon(Icons.map, size: MediaQuery.of(context).size.width / 13, color: AppPallete.whiteColor,),
        Icon(Icons.person, size: MediaQuery.of(context).size.width / 13, color: AppPallete.whiteColor,),
      ],),
      body: IndexedStack(
          index: currentPage,
          children: pages,
        ),

      );
  }
}
