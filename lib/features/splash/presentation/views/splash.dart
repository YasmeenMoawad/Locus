import 'dart:async';
import 'package:flutter/material.dart';
import 'package:locus/features/onboarding/presentation/views/onboarding.dart';
import 'package:locus/features/splash/presentation/views/widgets/background.dart';
import 'package:locus/features/splash/presentation/views/widgets/text.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  _startDelay(){
    _timer= Timer(const Duration(seconds:10), _goNext);
  }

  _goNext(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => const OnboardingScreen()),);  }

  @override
  void initState(){
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          BackgroundImage(),
          AppNameTextWidget(),

        ],
      ),
    );
  }
  @override
  void dispose(){
    _timer?.cancel();
    super.dispose();
  }
}
