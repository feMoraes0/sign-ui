import 'package:flutter/material.dart';
import 'package:sign_screens/login.dart';
import 'package:sign_screens/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Sign',
      theme: ThemeData (
        fontFamily: "Nunito"
      ),
      routes: {
        'register': (context) => Register(),
      },
      home: Login(),
    );
  }
}