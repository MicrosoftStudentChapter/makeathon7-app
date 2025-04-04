import 'package:flutter/material.dart';
import 'package:makeathon7/core/global_variables.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class Tracks1 extends StatelessWidget {
  const Tracks1({super.key});

  @override
  Widget build(BuildContext context) {
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
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: MediaQuery.of(context).size.width / 15,
                color: AppPallete.whiteColor,
              )),
          ),
          body: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 23, vertical: 23),
              padding: const EdgeInsets.all(20),
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
              child: Column(
                children: [
                  Center(
                      child: Text(
                    tracks[0]['title'] as String,
                    style: TextStyle(
                        color: AppPallete.timelineGold,
                        fontSize: 30,
                        fontFamily: 'LemonMilkMedium'),
                  )),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    tracks[0]['description'] as String,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'LeagueSpartan'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
