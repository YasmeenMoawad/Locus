import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/features/navbar/presentation/logic/nav_bar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locus/generated/assets.dart';

class NavBarIcons extends StatelessWidget {
  const NavBarIcons({Key? key, required this.index, required this.myPage}) : super(key: key);
  final int index;
  final myPage;

  @override
  Widget build(BuildContext context) {
    NavBarCubit buttonPressed = BlocProvider.of<NavBarCubit>(context, listen: true);
    return BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          return IconButton(
            onPressed: (){
              buttonPressed.buttonState();
              print(BlocProvider.of<NavBarCubit>(context).isButtonPressed);
              myPage.jumpToPage(index);
            },
            icon: SvgPicture.asset(
              index == 0
                  ? Assets.imagesRobotFace
                  : index == 1
                  ? Assets.imagesCalendar
                  : index == 2
                  ? Assets.imagesTelescope
                  : Assets.imagesVrGlasses,
              width: 28,
              colorFilter:
              ColorFilter.mode(
                buttonPressed.isButtonPressed
                    ? LocusColors.white
                    : LocusColors.grey,
                BlendMode.srcIn,
              ),
            ),
          );
        },
      );
  }
}
