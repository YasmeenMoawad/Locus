import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomizedAppBar(
      {super.key, required this.sKey, required this.isNotification});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final sKey, isNotification;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: Align(
        alignment: Alignment(3.w, 3.h),
        child: IconButton(
          onPressed: () {
            sKey.currentState?.openDrawer();
          },
          icon: SvgPicture.asset('assets/images/Vector.svg'),
        ),
      ),
      actions: [
        isNotification
            ? IconButton(
                onPressed: () {},
                icon:
                    SvgPicture.asset('assets/images/clarity_notification.svg'),
              )
            : SizedBox(
                width: 1.w,
              ),
      ],
    );
  }
}
