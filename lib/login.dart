import 'package:flutter/material.dart';

import 'package:sign_screens/components/curved-left-shadow.dart';
import 'package:sign_screens/components/curved-left.dart';
import 'package:sign_screens/components/curved-right-shadow.dart';
import 'package:sign_screens/components/curved-right.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(top: 0, left: 0, child: CurvedLeftShadow()),
            Positioned(top: 0, left: 0, child: CurvedLeft()),
            Positioned(bottom: 0, left: 0, child: CurvedRightShadow()),
            Positioned(bottom: 0, left: 0, child: CurvedRight()),
            
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
