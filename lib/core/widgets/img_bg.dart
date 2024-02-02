import 'package:flutter/material.dart';
import 'package:locus/generated/assets.dart';

class ImgBG extends StatelessWidget {
<<<<<<< Updated upstream
  const ImgBG({Key? key, required this.shadowColor}) : super(key: key);
=======
  const ImgBG({super.key});
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
          color: shadowColor,
=======
          color: const Color(0x4D000000),
>>>>>>> Stashed changes
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        )
      ],
    );
  }
}
