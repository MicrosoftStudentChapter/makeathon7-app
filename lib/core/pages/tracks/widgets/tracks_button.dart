import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/tracks/tracks_widget.dart';
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
    var duration = Duration(milliseconds: 600);
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 45,
        width: 180,
        decoration: BoxDecoration(
          color: AppPallete.timelineBg,
                    borderRadius: BorderRadius.circular(27),
                  ),
        child: TextButton.icon(
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => TracksWidget(),
                  transitionsBuilder: (context, animation1, animation2, child) {
                    return FadeTransition(
                      opacity: animation1,
                      child: child,
                    );
                  },
                  transitionDuration: duration,
                ));
          },
          label: Text(title,
              style: TextStyle(
                  color: AppPallete.whiteColor,
                  fontSize: 20,
                  fontFamily: 'LemonMilkMedium')),
          // icon: icon,
        ),
      ),
    );
  }
}
