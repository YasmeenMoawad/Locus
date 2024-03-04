import 'package:flutter/material.dart';
import 'package:locus/features/onboarding/presentation/views/widgets/background.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});



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
