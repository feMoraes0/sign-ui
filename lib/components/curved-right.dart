import 'package:flutter/material.dart';

class CurvedRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: ClipPath(
        clipper: RightClipper(),
        child: Container(
          height: 300.0,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromRGBO(86, 201, 251, 1.0),
                Color.fromRGBO(76, 170, 251, 1.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(20, size.height);
    path.quadraticBezierTo(
      20,
      size.height - 30,
      90,
      size.height - 40,
    );
    path.quadraticBezierTo(
      size.width - 80,
      size.height - 80,
      size.width - 40,
      70,
    );
    path.quadraticBezierTo(
      size.width - 25,
      0,
      size.width,
      0,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(20, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
