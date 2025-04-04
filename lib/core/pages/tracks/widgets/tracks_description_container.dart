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
                  fontWeight: FontWeight.w600,
                  fontFamily: 'LeagueSpartan'),
            ),
          ],
        ),
      ),
    );
  }
}
