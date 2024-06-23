import 'package:flutter/material.dart';

class FadingText extends StatelessWidget {
  const FadingText(this.text,{super.key,   this.fontsize, required this.color});

  final String text;
  final double? fontsize;
  final Color? color;
  

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      maxLines: 1,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
      ),

    );
  }
}