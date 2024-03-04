import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key,});
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        period: const Duration(seconds: 5),
        baseColor:const Color(0xffBAC1E9) ,
        highlightColor:const Color(0xff1B1F50) ,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('L',style: TextStyle(
                fontFamily: 'Spike Speak Straight',
                fontSize: 48,fontWeight: FontWeight.w400),),
            Image.asset('assets/images/satellite.png',scale: 3,),
            const Text('CUS',style: TextStyle(
                fontFamily: 'Spike Speak Straight',
                fontSize: 48,fontWeight: FontWeight.w400),),

          ],
        )
    );
  }
}
