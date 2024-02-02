import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/utils/background/logic/background_cubit.dart';
import 'package:locus/features/home/presentation/views/home_view.dart';
import 'package:locus/features/navbar/presentation/logic/nav_bar_cubit.dart';
import 'package:locus/features/navbar/presentation/views/nav_bar_screens.dart';
import 'package:locus/features/navbar/presentation/views/widgets/nav_bar_icon.dart';
import 'package:locus/generated/assets.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          int index = BlocProvider.of<NavBarCubit>(context).index;
          void onChangedTab (int index) {
            BlocProvider.of<NavBarCubit>(context).onChangedTab(index);
          }
          return Scaffold(
            backgroundColor: LocusColors.bgOfPlanetIcon,
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: (){},
              elevation: 0,
              child: Image.asset(Assets.imagesUranus),
            ),
            bottomNavigationBar: BottomAppBar(
              height: 60.h,
              notchMargin: 9.h,
              color: const Color(0xFF1D1F24),
              shape: const CircularNotchedRectangle(),
              child: NavBarIcon(index: index, onChangedTab: onChangedTab),
            ),
            body: Screens().navScreens[BlocProvider.of<NavBarCubit>(context).index],
          );
        },
      ),
    );
  }
}


