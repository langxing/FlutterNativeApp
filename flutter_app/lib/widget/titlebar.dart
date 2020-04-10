import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final Color  titleColor;
  final double titleSize, titleHeight;
  final String title;

  TitleBar({this.title, this.titleColor = Colors.black, this.titleSize = 18, this.titleHeight = 50});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
            color: titleColor,
            fontSize: titleSize
        ),
      ),
    );
  }

}