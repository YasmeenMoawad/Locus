import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/generated/assets.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({Key? key, required this.index, required this.onChangedTab}) : super(key: key);

  final index, onChangedTab;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildTabItem(
          index: 0,
          icon: SvgPicture.asset(Assets.imagesRobotFace,
            colorFilter: ColorFilter.mode(
              this.index == 0 ? LocusColors.white
                  : LocusColors.grey,
              BlendMode.srcIn,
            ),
          ),
        ),
        buildTabItem(
          index: 1,
          icon: SvgPicture.asset(Assets.imagesCalendar,
            colorFilter: ColorFilter.mode(
              this.index == 1 ? LocusColors.white
                  : LocusColors.grey,
              BlendMode.srcIn,
            ),
          ),
        ),
        //SizedBox(width: 38.w,),
        buildTabItem(
          index: 2,
          icon: SvgPicture.asset(Assets.imagesTelescope,
            colorFilter: ColorFilter.mode(
              Colors.transparent,
              BlendMode.srcIn,
            ),
          ),
        ),
        buildTabItem(
          index: 3,
          icon: SvgPicture.asset(Assets.imagesTelescope,
            colorFilter: ColorFilter.mode(
              this.index == 3 ? LocusColors.white
                  : LocusColors.grey,
              BlendMode.srcIn,
            ),
          ),
        ),
        buildTabItem(
          index: 4,
          icon: SvgPicture.asset(Assets.imagesVrGlasses,
            colorFilter: ColorFilter.mode(
              this.index == 4 ? LocusColors.white
                  : LocusColors.grey,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
  Widget buildTabItem({
    required int index,
    required SvgPicture icon,
  }) {
    return IconButton(
      icon: icon,
      onPressed: () => onChangedTab(index),
      highlightColor: Colors.transparent,
    );
  }
}
