import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/announcements/announcements.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 1000);
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
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
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
          body: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.16,
                  ),
                  Text(
                    'Timeline',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 56,
                        fontFamily: 'IntroRust'),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppPallete.timelineBg,
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 295,
                height: 370,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.17,
                                  ),
                                  Text(
                                    'Event ${index + 1}',
                                    style: TextStyle(
                                        color: AppPallete.timelineGold,
                                        fontSize: 30.33,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'LemonMilkMedium'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.195,
                                  ),
                                  Text(
                                    '22/2/2025',
                                    style: TextStyle(
                                        color: AppPallete.redColor,
                                        fontSize: 18.55,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'LemonMilkMedium'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Meow ok how lorem ipsum vMeow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum Meow ok how lorem ipsum',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'LeagueSpartan'),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
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
