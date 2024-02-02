import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/features/navbar/presentation/logic/nav_bar_cubit.dart';
import 'package:locus/features/navbar/presentation/views/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: LocusColors.white),
            useMaterial3: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: BlocProvider(
            create: (context) => NavBarCubit(),
              child: NavBar(),),
          // home: const HomeView(),
        );
      },
    );
  }
}
