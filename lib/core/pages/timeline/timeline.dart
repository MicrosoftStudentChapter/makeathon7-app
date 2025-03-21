import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/announcements/announcements.dart';
import 'package:makeathon7/core/global_variables.dart';
import 'package:makeathon7/core/pages/timeline/timeline_card.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 400);
    ScrollController controller = ScrollController();
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
          body: Center(
            child: Column(
              children: [
                Text(
                  'Timeline',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 56,
                      fontFamily: 'IntroRust'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Expanded(
                  // flex: 1,
                    child: Scrollbar(
                    thumbVisibility: true,
                    thickness: 10,
                    radius: Radius.circular(10),
                    scrollbarOrientation: ScrollbarOrientation.right,
                    controller: controller,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      controller: controller,
                      itemCount: timelineEvents.length,
                      itemBuilder: (context, index) {
                      final timelineEvent = timelineEvents[index];
                      return Column(
                        children: [
                        EventCard(
                          title: timelineEvent['title'] as String,
                          date: timelineEvent['date'] as String,
                          description: timelineEvent['description'] as String,
                        ),
                        if (index < timelineEvents.length - 1)
                          Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                          ),
                        ],
                      );
                      },
                    ),
                    ),
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
