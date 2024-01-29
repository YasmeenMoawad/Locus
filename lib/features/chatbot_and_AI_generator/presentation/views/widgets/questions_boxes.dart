import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/mono_text.dart';

class QuesBoxes extends StatelessWidget {
  QuesBoxes({Key? key, required this.childText}) : super(key: key);

  MonoText childText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      decoration: ShapeDecoration(
        color: LocusColors.white.withOpacity(0.07999999821186066),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: childText,
    );
  }
}
