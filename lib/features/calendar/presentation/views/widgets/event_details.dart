import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: LocusColors.grey.withOpacity(0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Winter solstice',
              style: TextStyle(
                color: const Color(0xFFFEAF69),
                fontSize: 14.sp,
                fontFamily: 'JetBrains Mono',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            TextSpan(
              text: ', the two moments during the year when the path of the Sun in the sky is farthest south in the Northern Hemisphere (December 21 or 22) and farthest north in the Southern Hemisphere (June 20 or 21). At the winter solstice the Sun travels the shortest path through the sky, and that day therefore has the least daylight and the longest night.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.8999999761581421),
                fontSize: 14.sp,
                fontFamily: 'JetBrains Mono',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
