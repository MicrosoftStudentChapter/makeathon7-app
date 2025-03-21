import 'package:flutter/material.dart';
import 'package:makeathon7/core/global_variables.dart';
import 'package:makeathon7/core/pages/navigator.dart';
import 'package:makeathon7/core/pages/tracks/widgets/tracks_description_container.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class TracksWidget extends StatelessWidget {
  const TracksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 400);
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
            leading:
              IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        HomePageNavigator(),
                                transitionsBuilder: (context, animation1,
                                    animation2, child) {
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
                        )
                        ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: tracks.length,
                  itemBuilder: (context, index) {
                    final trackPage = tracks[index];
                  return TracksPageDisplay(
                    title: trackPage['title'] as String,
                    description: trackPage['description'] as String,
                  );
                }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
