import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/img_bg.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/widgets/custom_tabbar.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/widgets/custom_tabbar_screens.dart';

class ChatbotAIViewBody extends StatefulWidget {
  ChatbotAIViewBody({Key? key}) : super(key: key);

  @override
  State<ChatbotAIViewBody> createState() => _ChatbotAIViewBodyState();
}

class _ChatbotAIViewBodyState extends State<ChatbotAIViewBody>
  with SingleTickerProviderStateMixin{

  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            const ImgBG(shadowColor: LocusColors.shadowOfBG),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   SizedBox(height: 25.h,),
                   CustomTabbar(ctrl: _tabController),
                   CustomTabbarScrrens(ctrl: _tabController),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
