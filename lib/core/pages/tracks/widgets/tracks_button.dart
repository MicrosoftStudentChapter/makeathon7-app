import 'package:flutter/material.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class TracksButton extends StatelessWidget {
  final String title;
  // final Image icon;
  const TracksButton({
    super.key,
    required this.title,
    // required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 47,
        width: 180,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 154, 7, 0),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(),
              spreadRadius: 2.5,
              blurRadius: 3.5,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
                style: TextStyle(
                    color: AppPallete.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'IntroRust'),
            // icon: icon, Remove for icon
          ),
        ),
      ),
    );
  }
}
