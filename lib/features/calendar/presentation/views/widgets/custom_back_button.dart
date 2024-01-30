import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';

class CustomizedBackButton extends StatelessWidget {
  const CustomizedBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h, width: 65.w,
      child: IconButton(
          color: LocusColors.white,
          onPressed: ()=> Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
