import 'package:flutter/material.dart';
import 'package:locus/constants/colors.dart';

class MonoText extends StatelessWidget {
  MonoText({Key? key,
    required this.txt,
    required this.size,
    required this.weight}) :super(key: key);

  String txt;
  double? size;
  FontWeight? weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: LocusColors.white,
        fontSize: size,
        fontFamily: 'JetBrains Mono',
        fontWeight: weight,
      ),
    );
  }
}
