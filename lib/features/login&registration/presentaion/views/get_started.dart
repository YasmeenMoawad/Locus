import 'package:flutter/material.dart';

import '../../../onboarding/presentation/views/widgets/background.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 660,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xff858585).withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      const Text('Get Started',style: TextStyle(
                        fontFamily: 'JetBrainsMono',
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                      ),),
                      TextFormField(),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
