import 'package:flutter/material.dart';
import 'package:makeathon7/theme/app_pallete.dart';
import 'package:makeathon7/tracks/tracks_page.dart';

class TracksWidget extends StatelessWidget {
  const TracksWidget({super.key});

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
          child: Container(
            width: 309,
            height: 645,
            decoration: BoxDecoration(
              color: AppPallete.redColorOpac,
              borderRadius: BorderRadius.circular(27),
              border: Border.all(
                color: AppPallete.greenColor,
                width: 5,
              ),
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
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.push(context, PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) => TracksPage(),
                          transitionsBuilder: (context, animation1, animation2, child) {
                            return FadeTransition(
                              opacity: animation1,
                              child: child,
                            );
                          },
                          transitionDuration: Duration(milliseconds: 600),
                        ));
                    }, icon: Icon(Icons.arrow_back_ios, size: 30, color: AppPallete.whiteColor,)),
                    Center(child: Text(
                      'TRACK TITLE',
                      style: TextStyle(
                          color: Colors.white, fontSize: 20, fontFamily: 'LemonMilkMedium'),
                    )),
                  ],
                )
              ],),
            ),
          ),
        ),
      ),
    );
  }
}
