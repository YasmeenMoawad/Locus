import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomizedAppBar({Key? key, required this.sKey, required this.isNotification}) : super(key: key);
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final sKey, isNotification;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          sKey.currentState?.openDrawer();
        },
        icon: SvgPicture.asset('assets/images/Vector.svg'),
      ),
      actions: [
        isNotification ? IconButton(
          onPressed: () {},
          icon:
          SvgPicture.asset('assets/images/clarity_notification.svg'),
        ) : SizedBox(width: 1.w,),
      ],
    );
  }
}
