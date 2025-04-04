import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool isLoading = false;

  Future<void> signIn() async {
    try {
      final UserCredential user = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      if (user.user != null) {
        if (mounted) {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  HomePageNavigator(),
              transitionsBuilder: (context, animation1, animation2, child) {
                return FadeTransition(
                  opacity: animation1,
                  child: child,
                );
              },
              transitionDuration: Duration(milliseconds: 400),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: AppPallete.borderColor,
                title: Text('Error'),
                content: Text('Invalid Email or Password'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            });
      }
    }
  }

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 0.0),
                  child: Image.asset(
                    'lib/assets/images/logo.png',
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
                          controller: _emailController,
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
                          controller: _passwordController,
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
                            signIn();
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
                          child: isLoading
                              ? const SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                )
                              : Text(
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
                          setState(() {
                            isLoading = true;
                          });
                          signIn();
                          Future.delayed(Duration(seconds: 3), () {
                            setState(() {
                              if (_emailController.text != " " ||
                                  _passwordController.text != "") {
                                isLoading = false;
                              } else {
                                isLoading = true;
                              }
                            });
                          });
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
