import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/navigator.dart';
import 'package:makeathon7/theme/app_pallete.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                Text(
                  'Announcements',
                  style: TextStyle(
                      color: Colors.white, fontSize: 32, fontFamily: 'IntroRust'),
                ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.48,
                  child: Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                    return SingleChildScrollView(
                    child: Column(
                      children: [
                      Row(
                        children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text(
                          'Announcement ${index + 1}',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'LeagueSpartan'),
                        ),
                        SizedBox(
                          width: 92,
                        ),
                        Text(
                          '20:48',
                          style: TextStyle(
                          color: AppPallete.redColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'LeagueSpartan'),
                        ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 37),
                        child: Text(
                        'Checkpoint will begin at 21:00. Please be seated at your seats till then. Meow meow meow Meow meow meow Meow meow meow',
                        style: TextStyle(
                          color: AppPallete.whiteOpac,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'LeagueSpartan'),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ],
                    ),
                    );
                    },
                  ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
