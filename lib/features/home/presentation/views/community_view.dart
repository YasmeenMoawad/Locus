import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/img_bg.dart';
import 'package:locus/features/home/presentation/views/widgets/custom_search_field.dart';

import 'widgets/community_post_item.dart';
import 'widgets/custom_image_profile.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ImgBG(shadowColor: LocusColors.shadowOfBG),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(18.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomImageProfile(
                          backGroundColor: Color(0xFF4D507B),
                          profileImage:
                              AssetImage('assets/images/profile_image.png'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              'assets/images/clarity_notification.svg'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    const CustomSearchField(),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CommunityPostItem();
                    }),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.black54,
              shape: const CircleBorder(),
              onPressed: () {},
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
