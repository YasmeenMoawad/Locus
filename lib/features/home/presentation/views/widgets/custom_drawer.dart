import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'drawer_item.dart';
import 'drawer_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1D1F24),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 15),
        child: Column(
          children: [
            // * user info
            Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile_image.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
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
              onTap: () {},
              subTitle1onTap: () {},
              subTitle2onTap: () {},
            ),
            DrawerItem(
              icon: const Image(
                  image: AssetImage('assets/images/community_icon.png')),
              title: 'Community',
              subTitle1: 'Posts',
              subTitle12: 'Upload',
              onTap: () {},
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
      ),
    );
  }
}
