import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background with playing card images
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Stack(
                children: [
                  Positioned(
                    top: -20,
                    left: -20,
                    child: Transform.rotate(
                      angle: 0.5, // approximately 28.6 degrees
                      child: Image.asset('assets/images/mini_playing_card.png',
                          width: 75, height: 105), // scaled by a factor of 1.5
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: -30, // more out of frame from the left edge
                    child: Transform.rotate(
                      angle: -0.5, // approximately -28.6 degrees
                      child: Image.asset('assets/images/mini_playing_card.png',
                          width: 75, height: 105), // scaled by a factor of 1.5
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    right: -20,
                    child: Transform.rotate(
                      angle:
                          2.14, // approximately 122.6 degrees (180 degrees relative to -1.0)
                      child: Image.asset('assets/images/mini_playing_card.png',
                          width: 75, height: 105), // scaled by a factor of 1.5
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: -10,
                    child: Transform.rotate(
                      angle: 1.0, // approximately 57.3 degrees
                      child: Image.asset('assets/images/mini_playing_card.png',
                          width: 75, height: 105), // scaled by a factor of 1.5
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 10,
                    child: Transform.rotate(
                      angle: -1.0, // approximately -57.3 degrees
                      child: Image.asset('assets/images/mini_playing_card.png',
                          width: 75, height: 105), // scaled by a factor of 1.5
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: -10,
                    child: Transform.rotate(
                      angle: 0.8, // approximately 45.8 degrees
                      child: Image.asset('assets/images/mini_playing_card.png',
                          width: 75, height: 105), // scaled by a factor of 1.5
                    ),
                  ),
                  Positioned(
                    top: 60,
                    right: 10,
                    child: Transform.rotate(
                      angle:
                          2.34, // approximately 134.2 degrees (180 degrees relative to -0.8)
                      child: Image.asset('assets/images/mini_playing_card.png',
                          width: 75, height: 105), // scaled by a factor of 1.5
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                    fontFamily: 'Rust'),
              ),
            ),
          ),
          // Additional text in the center
          Positioned(
            top: MediaQuery.of(context).size.height / 2 -
                130, // moved up by 30 pixels
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'CHECKPOINT 1',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontFamily: 'Rust'),
              ),
            ),
          ),
          // Image in the dead center
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image.asset('assets/images/slot_machine.png',
                  width: MediaQuery.of(context).size.width - 60),
            ),
          ),
          // Floating action button
          Positioned(
            bottom: 150,
            right: 30, // moved 30 pixels to the right
            child: SlideTransition(
              position: _animation,
              child: Transform.scale(
                scale: 1.5, // scaled by a factor of 1.5
                child: FloatingActionButton(
                  onPressed: _toggleRectangle,
                  backgroundColor: Colors.black,
                  child: Image.asset('assets/images/call_token.png'),
                ),
              ),
            ),
          ),
          // Rounded rectangle without animation
          if (_showRectangle)
            Positioned(
              bottom: 210, // 30 pixels above the floating button
              left: 10,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                height: (MediaQuery.of(context).size.width - 20) / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Add your children widgets here
                    Text(
                      'Hello, World!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
