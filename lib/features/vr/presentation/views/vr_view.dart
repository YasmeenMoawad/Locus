import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/img_bg.dart';
import 'package:locus/features/vr/presentation/views/widgets/level.dart';
import 'package:locus/generated/assets.dart';

class VRView extends StatelessWidget {
  const VRView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImgBG(shadowColor: LocusColors.shadowOfBG),
          Padding(
            padding: EdgeInsets.only(bottom: 28.h, top: 50.h, left: 26.w, right: 26.w),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Level(numLevel: 'Level One', imgLevel: Assets.imagesLevel1Bg),
                Level(numLevel: 'Level Two', imgLevel: Assets.imagesLevel2Bg),
                Level(numLevel: 'Level Three', imgLevel: Assets.imagesLevel3Bg),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
