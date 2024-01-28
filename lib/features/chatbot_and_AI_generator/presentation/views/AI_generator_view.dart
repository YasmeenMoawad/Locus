import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/widgets/chat_bar.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/widgets/locus_msgs.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/widgets/sender_msgs.dart';

class AIGeneratorView extends StatelessWidget {
  const AIGeneratorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 1.w,),
            SenderMsgs(),
          ],
        ),
        SizedBox(height: 25.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LocusMsgs(),
            SizedBox(width: 1.w,),
          ],
        ),
        SizedBox(height: 15.h,),
        ChatBar(),
        SizedBox(height: 10.h,),
      ],
    );
  }
}
