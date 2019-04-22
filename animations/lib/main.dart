import 'package:animations/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Intor',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
