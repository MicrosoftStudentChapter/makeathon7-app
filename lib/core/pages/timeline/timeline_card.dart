import 'package:flutter/material.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  const EventCard({
    super.key,
    required this.title,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              title,
              style: TextStyle(
                color: AppPallete.timelineGold,
                fontSize: 30.33,
                fontWeight: FontWeight.w600,
                fontFamily: 'LemonMilkMedium',
              ),
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Text(
              date,
              style: TextStyle(
                  color: AppPallete.redColor,
                  fontSize: 18.55,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'LemonMilkMedium'),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.5,
              fontWeight: FontWeight.w600,
              fontFamily: 'LeagueSpartan',
            ),
          ),
        ],
      ),
    );
  }
}
