import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';

class Style{
  final TextStyle popExtra = TextStyle(
   color: LocusColors.white,
   fontSize: 18.sp,
   fontFamily: 'Poppins',
   fontWeight: FontWeight.w600,
 );
  final TextStyle popDays = TextStyle(
    color: LocusColors.white,
    fontSize: 14.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  final TextStyle popNumDays = TextStyle(
    color: const Color(0xFFE5E5E5),
    fontSize: 14.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
  final TextStyle today = TextStyle(
    color: const Color(0xFF00FFEF),
    fontSize: 16.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );

}