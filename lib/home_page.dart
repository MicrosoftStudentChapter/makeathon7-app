import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/callMentor/call_a_mentor.dart';
import 'package:makeathon7/core/pages/checkpoint/checkpoint.dart';
import 'package:makeathon7/core/pages/profile/profile.dart';
import 'package:makeathon7/core/pages/timeline/timeline.dart';
import 'package:makeathon7/theme/app_pallete.dart';
import 'package:makeathon7/core/pages/tracks/tracks_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = [
    const Checkpoint(),
    const TracksPage(),
    const TimelinePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => CallAMentor(),
                        transitionsBuilder: (context, animation1, animation2, child) {
                          return FadeTransition(
                            opacity: animation1,
                            child: child,
                          );
                        },
                        transitionDuration: Duration(milliseconds: 1000),
                      ));
          },
          backgroundColor: Colors.transparent,
          child: Image.asset('lib/assets/images/callButton.png'),
        ),
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
      body:IndexedStack(
          index: currentPage,
          children: pages,
        ),
      );
  }
}
