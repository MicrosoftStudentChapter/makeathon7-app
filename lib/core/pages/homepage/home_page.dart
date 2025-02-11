import 'package:flutter/material.dart';
import 'package:makeathon7/core/pages/announcements/announcements.dart';
import 'package:makeathon7/theme/app_pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  bool _showRectangle = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0, -0.1),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleRectangle() {
    setState(() {
      _showRectangle = !_showRectangle;
    });
  }

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
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => Announcements(),
                              transitionsBuilder: (context, animation1, animation2, child) {
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
                  child: Icon(Icons.notifications_active_sharp, color: Colors.white, size: MediaQuery.of(context).size.width / 11,),
                  ),
                ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              // Foreground with text
              Positioned(
                top: 100, // moved up by 50 pixels
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'HOME',
                    style: TextStyle(
                        fontSize: 66,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: 'IntroRust'),
                  ),
                ),
              ),
              // Additional text in the center
              Positioned(
                top: MediaQuery.of(context).size.height / 2 -
                    140, // moved up by 30 pixels
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'CHECKPOINT 1',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: 'IntroRust'),
                  ),
                ),
              ),
              // Image in the dead center
              Positioned(
                top: MediaQuery.of(context).size.height / 2 -
                    70, // moved up by 30 pixels
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Image.asset('lib/assets/images/slot_machine.png',
                      width: MediaQuery.of(context).size.width - 60),
                ),
              ),
              // Floating action button
              Positioned(
                bottom: 50,
                right: 30, // moved 30 pixels to the right
                child: SlideTransition(
                  position: _animation,
                  child: Transform.scale(
                    scale: 1.2, // scaled by a factor of 1.2
                    child: FloatingActionButton(
                      onPressed: _toggleRectangle,
                      backgroundColor: Colors.transparent,
                      child: Image.asset('lib/assets/images/call_token.png'),
                    ),
                  ),
                ),
              ),
              // Rounded rectangle without animation
              if (_showRectangle)
                Positioned(
                  bottom: 130, // 30 pixels above the floating button
                  left: 10,
                  right: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    height: (MediaQuery.of(context).size.width - 20) / 2,
                    decoration: BoxDecoration(
                      color: AppPallete.redColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppPallete.greenColor,
                        width: 5,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Add your children widgets here
                        Text(
                          'Call A Mentor',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'LemonMilkMedium',
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
