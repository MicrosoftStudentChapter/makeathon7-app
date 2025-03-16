import 'package:flutter/material.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class AnnounceCard extends StatelessWidget {
  final String title;
  final String time;
  final String description;
  const AnnounceCard({
    super.key,
    required this.title,
    required this.time,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [  
              Text(title, style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w600,
                fontFamily: 'LeagueSpartan',
            ),),
            const SizedBox(width: 20),
            Text(time, style: TextStyle(
              color: AppPallete.redColor,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontFamily: 'LeagueSpartan',),
          ),
          ],
          ),
          const SizedBox(height: 5),
          Text(description, style: TextStyle(
            color: AppPallete.whiteOpac,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            fontFamily: 'LeagueSpartan',
          ),
          ),
        ],
      ),
    );
  }

}
