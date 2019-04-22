import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class FadeContainer extends StatelessWidget {

  final Animation<Color> fadeAnimation;

  const FadeContainer({this.fadeAnimation});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'Fade',
      child: Container(
        decoration: BoxDecoration(
          color: fadeAnimation.value
        ),
      ),
    );
  }
}