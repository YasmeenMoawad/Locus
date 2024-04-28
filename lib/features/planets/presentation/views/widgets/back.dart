import 'package:flutter/material.dart';

import '../../../data/models/details.dart';

class BgImage extends StatefulWidget {
  const BgImage(
      {super.key,
      required this.currentIndex,
      required this.planet,
      required this.pageOffset});

  final int currentIndex;
  final Planet planet;
  final double pageOffset;

  @override
  State<BgImage> createState() => _BgImageState();
}

class _BgImageState extends State<BgImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              widget.planet.background,
            )),
      ),
    );
  }
}
