import 'package:flutter/material.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_widget.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: AuthTextWidget(
            text: 'VerificationCubit',
            size: 32,
            fontWeight: FontWeight.bold,
            fontFamily: 'Spike Speak Straight',
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AuthTextWidget(
          text: 'Please enter the 6-digit code sent \nto your email contact.',
          size: 20,
          fontWeight: FontWeight.normal,
          fontFamily: 'JosefinSans-Regular',
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 10,
        ),
        AuthTextWidget(
          text: 'contact uiuxexperts@gmail.com',
          size: 20,
          fontWeight: FontWeight.normal,
          fontFamily: 'JosefinSans-Regular',
          textAlign: TextAlign.start,
          color: Color(0xff2D3380),
        ),
        SizedBox(
          height: 10,
        ),
        AuthTextWidget(
          text: 'for verification.',
          size: 20,
          fontWeight: FontWeight.normal,
          fontFamily: 'JosefinSans-Regular',
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
