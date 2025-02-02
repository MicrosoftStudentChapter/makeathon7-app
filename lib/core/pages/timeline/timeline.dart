import 'package:flutter/material.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_sharp),
                color: Colors.white,
                iconSize: 37,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              'Timeline',
              style: TextStyle(
                  color: Colors.white, fontSize: 56, fontFamily: 'IntroRust'),
            ),
            ],
          ),
        ),
    );
  }
}
