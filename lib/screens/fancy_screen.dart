import 'package:flutter/material.dart';

class FancyScreen extends StatelessWidget {
  const FancyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('fancy'),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: Swish1(),
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.yellow],
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: Swish2(),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.green],
                ),
              ),
              height: 400,
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 5000),
                  width: 200,
                  child: const Text('Fancy',
                      style: TextStyle(
                          fontSize: 70,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Swish1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.quadraticBezierTo(size.width * 0.0001900, size.height * 0.6349333,
        size.width * -0.0000800, size.height * 0.8422000);
    path.quadraticBezierTo(size.width * 0.3845600, size.height * 1.0057833,
        size.width * 1.0020200, size.height * 0.5079833);
    path.lineTo(size.width, size.height * 0.0016667);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class Swish2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.quadraticBezierTo(size.width * 0.0001900, size.height * 0.6349333,
        size.width * -0.0000800, size.height * 0.8422000);
    path.quadraticBezierTo(size.width * 0.3845600, size.height * 1.0057833,
        size.width * 1.0016000, size.height * 0.4425000);
    path.lineTo(size.width, size.height * 0.0016667);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
