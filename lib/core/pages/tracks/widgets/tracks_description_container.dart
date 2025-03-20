import 'package:flutter/material.dart';
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
                child: Text(
              title,
              style: TextStyle(
                  color: AppPallete.timelineGold,
                  fontSize: 30,
                  fontFamily: 'LemonMilkMedium'),
            )),
            SizedBox(
              height: 22,
            ),
            Text(
              description,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'LeagueSpartan'),
            ),
          ],
        ),
      ),
    );
  }
}
