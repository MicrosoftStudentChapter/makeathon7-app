import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/navigator.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var duration = Duration(milliseconds: 1000);
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                 padding: const EdgeInsets.only(
                      left: 20.0, top: 0.0),
                  child: Image.asset(
                    'lib/assets/images/logo.png', // Path to your logo image
                    // height: 1000, // Adjust the height as needed
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email/Username',
                            hintStyle: TextStyle(
                              color: Colors.white.withAlpha(158),
                              fontFamily: 'LeagueSpartan',
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0), // Decrease height
                          ),
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.white.withAlpha(158),
                              fontFamily: 'LeagueSpartan',
                             
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0), // Decrease height
                          ),
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width *
                            0.5, // Adjust the width of the login button
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            HomePageNavigator(),
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
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 154, 7,
                                0), // Set the background color to red
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  24.0), // Set the border radius
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0), // Adjust the padding
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'IntroRust',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            HomePageNavigator(),
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
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'LeagueSpartan',
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}