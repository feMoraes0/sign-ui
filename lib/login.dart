import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                child: ClipPath(
                  clipper: LoginTopShadowClipper(),
                  child: Container(
                    height: 320.0,
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          Color.fromRGBO(243, 169, 95, 0.3),
                          Color.fromRGBO(235, 101, 91, 0.3)
                        ])),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                child: ClipPath(
                  clipper: LoginTopClipper(),
                  child: Container(
                    height: 300.0,
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          Color.fromRGBO(243, 169, 95, 1.0),
                          Color.fromRGBO(235, 101, 91, 1.0)
                        ])),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                child: ClipPath(
                  clipper: LoginBottomShadowClipper(),
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
                        ])),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                child: ClipPath(
                  clipper: LoginBottomClipper(),
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
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 150.0,
                      padding: EdgeInsets.only(left: 10.0),
                      margin: EdgeInsets.only(right: 50.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 20.0,
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(90.0),
                          bottomRight: Radius.circular(90.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            style: TextStyle(fontSize: 22.0),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              icon: Icon(
                                Icons.person_outline,
                                size: 26.0,
                              ),
                              hintText: "Hello World",
                              border: InputBorder.none,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[200],
                              ),
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(fontSize: 22.0),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              icon: Icon(
                                Icons.lock_outline,
                                size: 26.0,
                              ),
                              hintText: "Password",
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 40,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(94, 201, 202, 1.0),
                              Color.fromRGBO(119, 235, 159, 1.0),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                            )
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 40.0,
                          color: Colors.white,
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
    );
  }
}

class LoginTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(30, size.height, 40, size.height - 40);
    path.quadraticBezierTo(80, 80, size.width - 120, 70);
    path.quadraticBezierTo(size.width, 60, size.width, 0);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LoginTopShadowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height - 10);
    path.quadraticBezierTo(35, size.height - 10, 45, size.height - 50);
    path.quadraticBezierTo(90, 90, size.width - 120, 80);
    path.quadraticBezierTo(size.width, 70, size.width, 25);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LoginBottomClipper extends CustomClipper<Path> {
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

class LoginBottomShadowClipper extends CustomClipper<Path> {
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
