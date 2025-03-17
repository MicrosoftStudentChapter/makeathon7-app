import 'package:flutter/material.dart';
import 'package:makeathon7/core/global_variables.dart';
import 'package:makeathon7/core/pages/tracks/widgets/tracks_page_widget.dart';

class TracksWidget extends StatelessWidget {
  const TracksWidget({super.key});

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
          ),
          body: ListView.builder(
            itemCount: tracks.length,
            itemBuilder: (context, index) {
              final trackDescription = tracks[index];
              return TracksPageDisplay(
                title: trackDescription['title'] as String,
                description: trackDescription['description'] as String,
              );
            },
          ),
        ),
      ),
    );
  }
}
