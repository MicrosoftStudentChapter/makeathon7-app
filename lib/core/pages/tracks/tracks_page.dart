import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/announcements/announcements.dart';
import 'package:makeathon7/theme/app_pallete.dart';
import 'package:makeathon7/core/pages/tracks/tracks_widget.dart';

class TracksPage extends StatelessWidget {
  const TracksPage({super.key});

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 600);
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
                  Navigator.push(context, PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => Announcements(),
                              transitionsBuilder: (context, animation1, animation2, child) {
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
                  child: Icon(Icons.notifications_active_sharp, color: Colors.white, size: MediaQuery.of(context).size.width / 11,),
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
                      color: Colors.white, fontSize: 56, fontFamily: 'IntroRust'),
                ),
                SizedBox(
                  height: 73,
                ),
                Container(
                  height: 267,
                  width: 294,
                  decoration: BoxDecoration(
                    color: AppPallete.redColorOpac,
                    border: Border.all(
                      color: AppPallete.greenColor,
                      width: 7,
                    ),
                    borderRadius: BorderRadius.circular(27),
                    boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(),
                  spreadRadius: 4,
                  blurRadius: 9,
                  offset: Offset(0, 4), // changes position of shadow
                ),
                ],
                  ),
        
                  child: Column(
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => TracksWidget(),
                            transitionsBuilder: (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ));
                        },
                        label: Text(' TRACK TITLE',
                            style: TextStyle(
                                color: AppPallete.whiteColor,
                                fontSize: 20,
                                fontFamily: 'LemonMilkMedium')),
                        icon: Icon(
                          Icons.navigation,
                          size: MediaQuery.of(context).size.width / 17,
                          color: AppPallete.whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => TracksWidget(),
                            transitionsBuilder: (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ));
                        },
                        label: Text(' TRACK TITLE',
                            style: TextStyle(
                                color: AppPallete.whiteColor,
                                fontSize: 20,
                                fontFamily: 'LemonMilkMedium')),
                        icon: Icon(
                          Icons.search,
                          size: MediaQuery.of(context).size.width / 17,
                          color: AppPallete.whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => TracksWidget(),
                            transitionsBuilder: (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ));
                        },
                        label: Text(' TRACK TITLE',
                            style: TextStyle(
                                color: AppPallete.whiteColor,
                                fontSize: 20,
                                fontFamily: 'LemonMilkMedium')),
                        icon: Icon(
                          Icons.close,
                          size: MediaQuery.of(context).size.width / 17,
                          color: AppPallete.whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => TracksWidget(),
                            transitionsBuilder: (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ));
                        },
                        label: Text(' TRACK TITLE',
                            style: TextStyle(
                                color: AppPallete.whiteColor,
                                fontSize: 20,
                                fontFamily: 'LemonMilkMedium')),
                        icon: Icon(
                          Icons.timer,
                          size: MediaQuery.of(context).size.width / 17,
                          color: AppPallete.whiteColor,
                        ),
                      ),
        
                    ],
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
