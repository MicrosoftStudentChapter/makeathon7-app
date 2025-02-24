import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/announcements/announcements.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 600);
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
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            Announcements(),
                        transitionsBuilder:
                            (context, animation1, animation2, child) {
                          return FadeTransition(
                            opacity: animation1,
                            child: child,
                          );
                        },
                        transitionDuration: duration,
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.notifications_active_sharp,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 11,
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Profile Title
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 100), // Adjust this value to move it upwards
                child: Center(
                  child: Image.asset(
                    'assets/Profile (1).png', // Use your saved image
                    width: 150, // Adjust size as needed
                  ),
                ),
              ),

              SizedBox(height: 0),

              // Profile Image (Properly Aligned)
              Align(
                alignment: Alignment(-0.7, 0.7), // Move slightly up
                child: CircleAvatar(
                  radius: 39,
                  backgroundImage: AssetImage('assets/Group 8 (1).png'),
                ),
              ),

              SizedBox(height: 40),

              // Profile Details
              Padding(
                padding: const EdgeInsets.only(
                    right: 60), // Adjust left padding as needed
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text("Name:", style: profileLabelStyle(fontSize: 14)),
                    SizedBox(height: 4),
                    Text("Aarav Dudeja",
                        style: profileValueStyle(fontSize: 18)),

                    Text("Email:", style: profileLabelStyle(fontSize: 14)),
                    SizedBox(height: 4),
                    Text("aarav.dudeja@gmail.com",
                        style: profileValueStyle(fontSize: 18)),

                    Text("Phone:", style: profileLabelStyle(fontSize: 14)),
                    SizedBox(height: 4),
                    Text("894114141512",
                        style: profileValueStyle(fontSize: 18)),

                    SizedBox(height: 60),

                    // Team Info
                    Text("TEAM NAME:", style: profileLabelStyle()),
                    Text("MEOW MEOW", style: profileValueStyle()),
                    Text("#89u1430", style: profileValueStyle()),
                    SizedBox(height: 20),
                    // Team Members
                    Text("Aarav Dudeja ★", style: profileValueStyle()),
                    Text("Kool Kids", style: profileValueStyle()),
                    Text("Someone else", style: profileValueStyle()),
                    Text("AJnjnjndaf", style: profileValueStyle()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Profile Text Styles
TextStyle profileLabelStyle({double fontSize = 14}) {
  return TextStyle(
    fontFamily: 'roboto', // Change to 'sans-serif' or 'monospace' if needed
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: Colors.grey[700],
  );
}

TextStyle profileValueStyle({double fontSize = 18}) {
  return TextStyle(
    fontFamily: 'roboto', // Change font family as desired
    fontSize: fontSize,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
