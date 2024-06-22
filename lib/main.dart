import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/features/login/data/Cache_Helper/CacheHelper.dart';
import 'package:locus/features/login/data/Dio/Dio_File.dart';
import 'package:locus/features/login/presentation/logic/GetStartedCubit/get_started_cubit.dart';
import 'package:locus/features/login/presentation/logic/VerificationCubit/verification_cubit.dart';
import 'package:locus/features/login/presentation/logic/WelcomeCubit/welcome_cubit.dart';
import 'package:locus/features/splash/presentation/views/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.initcache();
  AppDioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetStartedCubit(),
          ),
          BlocProvider(
            create: (context) => WelcomeCubit(),
          ),
          BlocProvider(
            create: (context) => VerificationCubit(),
          ),
        ],
        child: ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return
       MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: LocusColors.white),
            useMaterial3: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const SplashScreen(),
          // home: const HomeView(),
        );
      },
    ),
    );
  }
}
