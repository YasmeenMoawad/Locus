import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locus/features/home/presentation/views/community_view.dart';
import 'package:locus/features/home/presentation/views/profile_view.dart';
import 'package:locus/features/home/presentation/views/widgets/custom_image_profile.dart';
import 'package:locus/features/home/presentation/views/widgets/drawer_list_tile.dart';

import '../../../../home/presentation/views/widgets/drawer_item.dart';

Widget drawer({required BuildContext context})=>Drawer(
  child: Column(
    children: [
      // * user info
      Row(
        children: [
          const CustomImageProfile(

            profileImage: AssetImage('assets/images/profile_image.png'),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Locus team',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'JetBrains Mono',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Locusteam@gmail.com',
                maxLines: 1,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.white.withOpacity(0.699999988079071),
                  // fontSize: 12,
                  fontFamily: 'JetBrains Mono',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 15),
        child: Divider(),
        // * profile
      ),
      DrawerItem(
        icon:
        const Image(image: AssetImage('assets/images/user_icon.png')),
        title: 'Profile',
        subTitle1: 'Setting',
        subTitle12: 'My Planet',
        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const ProfileView();
            }),
          );
        },
        subTitle1onTap: () {},
        subTitle2onTap: () {},
      ),
      DrawerItem(
        icon: const Image(
            image: AssetImage('assets/images/community_icon.png')),
        title: 'Community',
        subTitle1: 'Posts',
        subTitle12: 'Upload',
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CommunityView()));
        },
        subTitle1onTap: () {},
        subTitle2onTap: () {},
      ),
      Column(
        children: [
          DrawerListTile(
            icon: SvgPicture.asset('assets/images/document_icon.svg'),
            title: 'Terms / Conditions',
            onTap: () {},
          ),
          DrawerListTile(
            icon: SvgPicture.asset('assets/images/notebook.svg'),
            title: 'Privacy / Policy',
            onTap: () {},
          ),
          DrawerListTile(
            icon: SvgPicture.asset('assets/images/help-circle.svg'),
            title: 'FAQs',
            onTap: () {},
          ),
          DrawerListTile(
            icon: SvgPicture.asset('assets/images/rating.svg'),
            title: 'App Rating',
            onTap: () {},
          ),
        ],
      ),
    ],
  ),
);