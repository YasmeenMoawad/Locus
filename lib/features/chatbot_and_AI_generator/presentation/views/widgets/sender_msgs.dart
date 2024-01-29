import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/mono_text.dart';

class SenderMsgs extends StatelessWidget {
  SenderMsgs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.6,
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      decoration: const ShapeDecoration(
        color: LocusColors.active,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.zero
            )),
      ),
      child: MonoText(txt: 'Generate to me photo about constellation.',
          size: 13.sp, weight: FontWeight.w500),
    );
  }
}
