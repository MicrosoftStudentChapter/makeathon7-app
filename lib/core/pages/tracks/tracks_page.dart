import 'package:flutter/material.dart';
import 'package:makeathon7/core/global_variables.dart';
import 'package:makeathon7/core/pages/announcements/announcements.dart';
import 'package:makeathon7/core/pages/tracks/widgets/tracks_button.dart';
import 'package:makeathon7/theme/app_pallete.dart';
import 'package:makeathon7/core/pages/tracks/tracks_pages/tracks1.dart';
import 'package:makeathon7/core/pages/tracks/tracks_pages/tracks2.dart';
import 'package:makeathon7/core/pages/tracks/tracks_pages/tracks3.dart';
import 'package:makeathon7/core/pages/tracks/tracks_pages/tracks4.dart';

class TracksPage extends StatefulWidget {
  const TracksPage({super.key});

  @override
  State<TracksPage> createState() => _TracksPageState();
}

class _TracksPageState extends State<TracksPage> {
  int currentPage = 0;

  List<Widget> pages = [
    Tracks1(),
    Tracks2(),
    Tracks3(),
    Tracks4(),
  ];

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 400);
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            Announcements(),
                        transitionsBuilder:
                            (context, animation1, animation2, child) {
                          return FadeTransition(
                            opacity: animation1,
                            child: child,
                          );
                        },
                        transitionDuration: duration,
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.notifications_active_sharp,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 11,
                  ),
                ),
              ),
            ],
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'TRACKS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 56,
                      fontFamily: 'IntroRust'),
                ),
                SizedBox(
                  height: 73,
                ),
                Container(
                  height: 280,
                  width: 294,
                  decoration: BoxDecoration(
                    color: AppPallete.timelineBg,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(),
                        spreadRadius: 4,
                        blurRadius: 9,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      GestureDetector(
                        onTap: () {
                        setState(() {
                          currentPage = 0;
                        });
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                pages[currentPage],
                            transitionsBuilder:
                                (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ),
                        );
                        },
                        child: TracksButton(
                        title: tracks[0]['title'] as String,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        setState(() {
                          currentPage = 1;
                        });
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                pages[currentPage],
                            transitionsBuilder:
                                (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ),
                        );
                        },
                        child: TracksButton(
                        title: tracks[1]['title'] as String,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        setState(() {
                          currentPage = 2;
                        });
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                pages[currentPage],
                            transitionsBuilder:
                                (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ),
                        );
                        },
                        child: TracksButton(
                        title: tracks[2]['title'] as String,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        setState(() {
                          currentPage = 3;
                        });
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                pages[currentPage],
                            transitionsBuilder:
                                (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ),
                        );
                        },
                        child: TracksButton(
                        title: tracks[3]['title'] as String,
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
