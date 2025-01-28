import 'package:flutter/material.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class TracksPage extends StatelessWidget {
  const TracksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppPallete.backgroundColor,
        actions: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active_sharp), color: Colors.white, iconSize: 30,),
        )
      ],),
      body: Center(
        child: Column(
          children: [
            Text('Tracks', style: TextStyle(color: Colors.white, fontSize: 30),),
            
          ],
        ),
      ),

    );
  }
}
