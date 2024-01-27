import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/generated/assets.dart';

class ChatBar extends StatelessWidget {
  const ChatBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: LocusColors.active,
      decoration: InputDecoration(
        fillColor: LocusColors.white.withOpacity(0.07999999821186066),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: LocusColors.active, width: 1,)),
        suffixIcon: Container(
          width: 33.w,
          height: 30.h,
          margin: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: LocusColors.active,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: SvgPicture.asset(Assets.imagesSend),
        ),
      ),
    );
  }
}
