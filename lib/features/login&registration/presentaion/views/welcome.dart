import 'package:flutter/material.dart';

import '../../../onboarding/presentation/views/widgets/background.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          BackgroundImage(),
        ],
      ),
    );
  }
}
