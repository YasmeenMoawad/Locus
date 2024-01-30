import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/img_bg.dart';
import 'package:locus/features/calendar/presentation/views/widgets/custom_back_button.dart';
import 'package:locus/features/calendar/presentation/views/widgets/event_details.dart';
import 'package:locus/generated/assets.dart';

class EventView extends StatelessWidget {
  const EventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ImgBG(shadowColor: LocusColors.shadowOfBG),
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(Assets.imagesEventImg),
                  const CustomizedBackButton(),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 14.w),
                child: const Column(
                  children: [
                    EventDetails(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
