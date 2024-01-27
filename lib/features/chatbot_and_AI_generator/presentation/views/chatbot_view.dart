import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locus/core/widgets/custom_text.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/widgets/chat_bar.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/widgets/questions_boxes.dart';
import 'package:locus/generated/assets.dart';

class ChatbotView extends StatelessWidget {
  const ChatbotView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(height: 20.h,),
        CustomText(txt: 'Welcome to\nLocus Robot', size: 30.sp, weight: FontWeight.w700),
        CustomText(txt: 'Ask anything, get yout answer', size: 11.sp, weight: FontWeight.w500),
        SizedBox(height: 1.h,),
        SvgPicture.asset(Assets.imagesRocket),
        CustomText(txt: 'Examples', size: 20.sp, weight: FontWeight.w500),
        QuesBoxes(childText: CustomText(txt: '“What is the influence of other planets on Earth?”',
            size: 14.sp, weight: FontWeight.w500),),
        QuesBoxes(childText: CustomText(txt: '“Is there life on other planets?”',
            size: 14.sp, weight: FontWeight.w500),),
        QuesBoxes(childText: CustomText(txt: '“Generate to me photo about constellation.”',
            size: 14.sp, weight: FontWeight.w500),),
        SizedBox(height: 15.h,),
        const ChatBar(),
        SizedBox(height: 1.h,),
      ],
    );
  }
}
