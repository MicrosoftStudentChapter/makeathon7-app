import 'package:flutter/material.dart';
import 'package:makeathon7/core/global_variables.dart';
import 'package:makeathon7/core/pages/announcements/announce_card.dart';
import 'package:makeathon7/core/pages/navigator.dart';

class Announcements extends StatelessWidget {
  const Announcements({super.key});

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 600);
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
          body: Center(
            child: Column(
              children: [
                Text(
                  'Announcements',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'IntroRust'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.045,
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.48,
                    child: Scrollbar(
                      thumbVisibility: true,
                      thickness: 10,
                      radius: Radius.circular(10),
                      scrollbarOrientation: ScrollbarOrientation.right,
                      controller: controller,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        controller: controller,
                        itemCount: announcements.length,
                        itemBuilder: (context, index) {
                          final announce = announcements[index];
                          return AnnounceCard(
                            title: announce['title'] as String,
                            time: announce['time'] as String,
                            description: announce['description'] as String,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.23,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
