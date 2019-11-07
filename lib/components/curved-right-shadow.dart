import 'package:flutter/material.dart';

class CurvedRightShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Container(
      child: ClipPath(
        clipper: RightShadowClipper(),
        child: Container(
          height: 320.0,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromRGBO(86, 201, 251, 0.4),
                Color.fromRGBO(76, 170, 251, 0.4)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RightShadowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(10, size.height);
    path.quadraticBezierTo(
      5,
      size.height - 30,
      65,
      size.height - 43,
    );
    path.quadraticBezierTo(
      size.width - 80,
      size.height - 80,
      size.width - 45,
      70,
    );
    path.quadraticBezierTo(
      size.width - 25,
      0,
      size.width,
      0,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(10, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
