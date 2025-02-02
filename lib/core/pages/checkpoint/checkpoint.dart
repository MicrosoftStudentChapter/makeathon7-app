import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/announcements/announcements.dart';

class Checkpoint extends StatelessWidget {
  const Checkpoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) => Announcements(),
                          transitionsBuilder: (context, animation1, animation2, child) {
                            return FadeTransition(
                              opacity: animation1,
                              child: child,
                            );
                          },
                          transitionDuration: Duration(milliseconds: 1000),
                        ));
                },
                icon: Icon(Icons.notifications_active_sharp),
                color: Colors.white,
                iconSize: 37,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              'Home',
              style: TextStyle(
                  color: Colors.white, fontSize: 56, fontFamily: 'IntroRust'),
            ),
            ],
          ),
        ),
    );
  }
}
