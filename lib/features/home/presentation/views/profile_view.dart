import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/img_bg.dart';
import 'package:locus/features/home/presentation/views/widgets/custom_profile_avatar.dart';
import 'widgets/custom_profile_item.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ImgBG(shadowColor: LocusColors.shadowOfBG),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                const CustomProfileAvatar(),
                SizedBox(height: 20.h),
                Text(
                  'Locus Team',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 18,
                    fontFamily: 'JetBrains Mono',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Adambdwyy@gmail.com',
                  style: TextStyle(
                    color: const Color(0xFFB7B7B8),
                    fontSize: MediaQuery.of(context).size.width / 22,
                    fontFamily: 'JetBrains Mono',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30.h),
                CustomProfileItem(
                  prefixIcon: 'assets/images/user_icon.png',
                  title: 'Edit Account',
                  suffixIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                SizedBox(height: 5.h),
                CustomProfileItem(
                  prefixIcon: 'assets/images/location_icon.png',
                  title: 'Edit Location',
                  suffixIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                SizedBox(height: 5.h),
                CustomProfileItem(
                  prefixIcon: 'assets/images/events_icon.png',
                  title: 'Saved Events',
                  suffixIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                SizedBox(height: 5.h),
                CustomProfileItem(
                  prefixIcon: 'assets/images/log_out_icon.png',
                  title: 'Log Out',
                  onTap: () {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
