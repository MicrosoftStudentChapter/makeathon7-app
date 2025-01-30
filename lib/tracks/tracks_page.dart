import 'package:flutter/material.dart';
import 'package:makeathon7/theme/app_pallete.dart';
import 'package:makeathon7/tracks/tracks_widget.dart';

class TracksPage extends StatelessWidget {
  const TracksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_sharp),
                color: Colors.white,
                iconSize: 37,
              ),
            )
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

                // child: ListView.builder(
                //     itemBuilder: (context, index) {
                //       return ListTile(
                //         title: Text('TRACK ${index + 1}', style: TextStyle(color: Colors.white, fontSize: 36)),
                //         subtitle: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(height: 10),
                //             Text('Description', style: TextStyle(color: Colors.white, fontSize: 24)),
                //             SizedBox(height: 10),
                //             Text('Rules', style: TextStyle(color: Colors.white, fontSize: 24)),
                //             SizedBox(height: 10),
                //             Text('Prizes', style: TextStyle(color: Colors.white, fontSize: 24)),
                //           ],
                //         ),
                //         contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                //       );
                //     },
                //     itemCount: 5,
                //     shrinkWrap: true,
                //     physics: ScrollPhysics(),
                //   )

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
                          transitionDuration: Duration(milliseconds: 600),
                        ));
                      },
                      label: Text(' TRACK TITLE',
                          style: TextStyle(
                              color: AppPallete.whiteColor,
                              fontSize: 20,
                              fontFamily: 'LemonMilkMedium')),
                      icon: Icon(
                        Icons.navigation,
                        size: 25,
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
                          transitionDuration: Duration(milliseconds: 600),
                        ));
                      },
                      label: Text(' TRACK TITLE',
                          style: TextStyle(
                              color: AppPallete.whiteColor,
                              fontSize: 20,
                              fontFamily: 'LemonMilkMedium')),
                      icon: Icon(
                        Icons.search,
                        size: 25,
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
                          transitionDuration: Duration(milliseconds: 600),
                        ));
                      },
                      label: Text(' TRACK TITLE',
                          style: TextStyle(
                              color: AppPallete.whiteColor,
                              fontSize: 20,
                              fontFamily: 'LemonMilkMedium')),
                      icon: Icon(
                        Icons.close,
                        size: 25,
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
                          transitionDuration: Duration(milliseconds: 600),
                        ));
                      },
                      label: Text(' TRACK TITLE',
                          style: TextStyle(
                              color: AppPallete.whiteColor,
                              fontSize: 20,
                              fontFamily: 'LemonMilkMedium')),
                      icon: Icon(
                        Icons.timer,
                        size: 25,
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
    );
  }
}
