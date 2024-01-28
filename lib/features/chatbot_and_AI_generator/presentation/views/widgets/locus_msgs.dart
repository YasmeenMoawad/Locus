import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/widgets/dots.dart';

class LocusMsgs extends StatelessWidget {
  const LocusMsgs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.w,
      height: 30.h,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: LocusColors.white.withOpacity(0.20000000298023224),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Dots(),
          SizedBox(width: 5),
          Dots(),
          SizedBox(width: 5),
          Dots(),
        ],
      ),
    );
  }
}
