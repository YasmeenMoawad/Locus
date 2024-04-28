import 'package:flutter/material.dart';

class AuthTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final FontWeight fontWeight;
  final String? fontFamily;
  final TextAlign textAlign;
  const AuthTextWidget({
    super.key,
    required this.text,
    this.color,
    required this.size,
    required this.fontWeight,
    this.fontFamily, required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color ?? Colors.white,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
