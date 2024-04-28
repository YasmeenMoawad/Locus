import 'package:flutter/material.dart';
import 'package:locus/features/login/presentation/logic/VerificationCubit/verification_cubit.dart';
import 'package:pinput/pinput.dart';

class OTPWidgets extends StatelessWidget {
   OTPWidgets({
    super.key,
    controller
  });

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 40,
        height: 40,
        textStyle: const TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffC4C4C4),
          borderRadius: BorderRadius.circular(10),
        ));
    return Pinput(
      controller: VerificationCubit.get(context).pin,
      length: 6,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(),
      onCompleted: (value){
        return print(value);
      },
    );
  }
}