import 'package:flutter/material.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_widget.dart';

class AuthTextButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final String text;
    final double size;

  const AuthTextButtonWidget({super.key, required this.text, this.color, required this.size,required this.onPressed});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        alignment: Alignment.topRight,
      ),
      child: AuthTextWidget(
          text: text,
          size: size,
          fontWeight: FontWeight.bold,
          color:  color, textAlign: TextAlign.center,),
    );
  }
}
