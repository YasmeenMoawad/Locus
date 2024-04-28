import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locus/features/login/data/Cache_Helper/CacheHelper.dart';
import 'package:locus/features/login/presentation/logic/VerificationCubit/verification_cubit.dart';
import 'package:locus/features/login/presentation/views/login.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_button_widget.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_widget.dart';
import 'package:locus/features/login/presentation/views/widgets/email_verification.dart';
import 'package:locus/features/login/presentation/views/widgets/otp_widget.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerificationCubit, VerificationState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/background.png',
                        ))),
              ),
              //Image.asset(
              // 'assets/images/background.png',
              // height: MediaQuery.of(context).size.height,
              //fit: BoxFit.cover,
              //),
              Align(
                alignment: Alignment.bottomCenter,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.9,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xff858585).withOpacity(0.6),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const EmailVerification(),
                                OTPWidgets(),
                                const SizedBox(
                                  height: 30,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    VerificationCubit.get(context)
                                        .emailVerification();
                                    print(CacheHelper.getdata(key: 'email')
                                        .toString());
                                    print(
                                        'Bearer ${CacheHelper.getdata(key: 'token')}');
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(300, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: const Color(0xff2D3380)),
                                  child: const Text(
                                    'Verify',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JosefinSans-Bold',
                                        fontSize: 18),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const AuthTextWidget(
                                      text: 'Didn’t receive any code? ',
                                      size: 14,
                                      fontFamily: 'JosefinSans-Bold',
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xffC4C4C4),
                                      textAlign: TextAlign.center,
                                    ),
                                    AuthTextButtonWidget(
                                      onPressed: () {},
                                      text: 'Resend Again',
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                const AuthTextWidget(
                                  text: 'Request new code in 00:30s',
                                  fontFamily: 'JosefinSans-Regular',
                                  size: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xffC4C4C4),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
