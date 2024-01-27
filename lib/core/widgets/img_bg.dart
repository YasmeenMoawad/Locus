import 'package:flutter/material.dart';
import 'package:locus/generated/assets.dart';

class ImgBG extends StatelessWidget {
  const ImgBG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(Assets.imagesBackground,fit: BoxFit.fill,)
        ),
        Container(
          color: Color(0x4D000000),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        )
      ],
    );
  }
}
