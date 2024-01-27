import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({Key? key, required this.label, required this.icon}) : super(key: key);

  final label, icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 10.w,),
        Text(label),
      ],
    );
  }
}
