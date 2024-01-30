import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/img_bg.dart';
import 'package:locus/core/widgets/mono_text.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ImgBG(shadowColor: LocusColors.shadowOfLoading),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 68.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MonoText(txt: 'Scanning...', size: 20.sp, weight: FontWeight.w700),
                SizedBox(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/4,
                  child: const LoadingIndicator(
                      indicatorType: Indicator.ballSpinFadeLoader,
                      colors: [LocusColors.white],
                      strokeWidth: 0.5,
                      backgroundColor: Colors.transparent,
                      pause: true,
                  ),
                ),
                MonoText(txt: 'Please turn on GPS.', size: 12.sp, weight: FontWeight.w700),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
