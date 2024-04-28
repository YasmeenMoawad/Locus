import 'package:flutter/material.dart';

import '../planet_details.dart';
class CustomDiscription extends StatelessWidget {
  const CustomDiscription({
    super.key,
    required this.widget,
    required this.text,
  });

  final PlanetDetail widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: IntrinsicHeight(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xff858585).withOpacity(0.4),
            borderRadius:  BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(text,style: const TextStyle(
                fontFamily: 'JosefinSans-Regular',
                fontSize: 16,
                color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }
}
