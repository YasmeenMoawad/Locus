import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final String text, type;
  final TextEditingController ?controller;
  final IconData icon;
  final String? fontfamily;
  final Color? color;

  const AuthTextFieldWidget(
      {super.key,
      required this.text,
      required this.icon,
      required this.type,
      this.fontfamily,
      this.controller,
      this.color});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) {
        if (val!.isEmpty) {
          return 'Not Valid $type';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Icon(
          icon,
        ),
        labelStyle: TextStyle(
          fontFamily: fontfamily,
          fontSize: 16,
        ),
        hintText: text,
        filled: true,
        fillColor: const Color(0xffC4C4C4),
        contentPadding: const EdgeInsets.all(13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
