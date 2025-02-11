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
                Text(
                'Login Page',
                style: TextStyle(
                    color: Colors.white, fontSize: 56, fontFamily: 'IntroRust'),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => HomePageNavigator(),
                            transitionsBuilder: (context, animation1, animation2, child) {
                              return FadeTransition(
                                opacity: animation1,
                                child: child,
                              );
                            },
                            transitionDuration: duration,
                          ));
              }, style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ), child: Text('Login'),),
              ],
            ),
          ),
      ),
    );
  }
}
