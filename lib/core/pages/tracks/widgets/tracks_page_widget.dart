import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/navigator.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class TracksPageDisplay extends StatelessWidget {
  final String title;
  final String description;
  const TracksPageDisplay({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 600);
    return Center(
      child: Container(
        width: 309,
        height: 625,
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
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
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
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: MediaQuery.of(context).size.width / 15,
                        color: AppPallete.whiteColor,
                      )),
                  Center(
                      child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'LemonMilkMedium'),
                  )),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                description,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'LemonMilkMedium'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
