import 'package:flutter/material.dart';
import 'package:locus/generated/assets.dart';

class ImgBG extends StatelessWidget {
  const ImgBG({super.key, required this.shadowColor});

  final Color shadowColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              Assets.imagesBackground,
              fit: BoxFit.fill,
            )),
        Container(
          color: shadowColor,
          color: const Color(0x4D000000),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        )
      ],
    );
  }
}
