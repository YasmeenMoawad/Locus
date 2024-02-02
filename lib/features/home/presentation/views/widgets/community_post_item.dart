import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_image_profile.dart';

class CommunityPostItem extends StatelessWidget {
  const CommunityPostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: EdgeInsets.all(15.w),
        // height: MediaQuery.of(context).size.height / 1.5,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF1C1C1E),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const CustomImageProfile(
                  backGroundColor: Color(0xFF4D507B),
                  profileImage: AssetImage('assets/images/profile_image.png'),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Youssef Maati',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.w,
                        fontFamily: 'JetBrains Mono',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '4 hours ago',
                      style: TextStyle(
                        color: const Color.fromARGB(109, 255, 255, 255),
                        fontSize: MediaQuery.of(context).size.width / 25,
                        fontFamily: 'JetBrains Mono',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              'Okeyy sure!!! You’ll have to wait until 2040 before you can get a chance to see the auspicious alignment of six planets: The Moon, Mars, Mercury, Venus, Jupiter and Saturn. :)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'JetBrains Mono',
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/venus_bg.png'),
                ),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Color.fromARGB(86, 255, 255, 255),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mode_comment_outlined,
                    color: Color.fromARGB(86, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
