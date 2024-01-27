import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/utils/background/logic/background_cubit.dart';
import 'package:locus/features/navbar/presentation/logic/nav_bar_cubit.dart';
import 'package:locus/features/navbar/presentation/views/nav_bar_screens.dart';
import 'package:locus/features/navbar/presentation/views/widgets/nav_bar_icons.dart';
import 'package:locus/generated/assets.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);

  final PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    NavBarCubit buttonPressed = BlocProvider.of<NavBarCubit>(context, listen: false);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavBarCubit(),
        ),
        BlocProvider(
          create: (context) => BackgroundCubit(),
        ),
      ],
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: LocusColors.bgOfPlanetIcon,
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: LocusColors.bgOfPlanetIcon,
              onPressed: (){},
              elevation: 0,
              child: Image.asset(Assets.imagesUranus),
            ),
            bottomNavigationBar: BottomAppBar(
              height: 65.h,
              notchMargin: 6.h,
              color: const Color(0xFF1D1F24),
              shape: const CircularNotchedRectangle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBarIcons(index: 0, myPage: _myPage),
                  NavBarIcons(index: 1, myPage: _myPage),
                  SizedBox(width: 38.w,),
                  NavBarIcons(index: 2, myPage: _myPage),
                  NavBarIcons(index: 3, myPage: _myPage),
               ],
              ),
            ),
            body: PageView(
              controller: _myPage,
              onPageChanged: (int) {
                print('Page Changes to index $int');
              },
              physics: const NeverScrollableScrollPhysics(),
              children: Screens().navScreens,
            ),
          );
        },
      ),
    );
  }
}


