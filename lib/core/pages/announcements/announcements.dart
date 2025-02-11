import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/navigator.dart';

class Announcements extends StatelessWidget {
  const Announcements({super.key});

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
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          HomePageNavigator(),
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
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width / 11,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Announcements',
                style: TextStyle(
                    color: Colors.white, fontSize: 56, fontFamily: 'IntroRust'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
