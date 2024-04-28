import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locus/features/login/presentation/logic/WelcomeCubit/welcome_cubit.dart';
import 'package:locus/features/login/presentation/views/get_started.dart';
import 'package:locus/features/login/presentation/views/widgets/Nav.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_button_widget.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_field_widget.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  var formState = GlobalKey();
  TextEditingController passControll = TextEditingController();
  TextEditingController emailControll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeCubit, WelcomeState>(
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
                            color: const Color(0xff858585).withOpacity(0.4),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 25, right: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const AuthTextWidget(
                                  text: 'Welcome Back',
                                  size: 32,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Spike Speak Straight',
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Form(
                                  key: formState,
                                  child: Column(children: [
                                    AuthTextFieldWidget(
                                      controller: emailControll,
                                      type: 'Email',
                                      text: 'Enter your email',
                                      icon: Icons.email_rounded,
                                      fontfamily: 'Josefin Sans',
                                      color: const Color(0xffC4C4C4),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    AuthTextFieldWidget(
                                      controller: passControll,
                                      type: 'password',
                                      text: 'Password',
                                      icon: Icons.lock,
                                      fontfamily: 'Josefin Sans',
                                      color: const Color(0xffC4C4C4),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                AuthTextButtonWidget(
                                  onPressed: () {},
                                  text: 'Forget Password?',
                                  size: 11,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    WelcomeCubit.get(context).Login(
                                        password: passControll.text,
                                        email: emailControll.text,
                                        context: context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(50, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: const Color(0xff2D3380)),
                                  child: const Text(
                                    'Log In',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const AuthTextWidget(
                                      text: 'Dont’t have account?',
                                      size: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      textAlign: TextAlign.center,
                                    ),
                                    AuthTextButtonWidget(
                                      onPressed: () {
                                        navScreen(
                                            context: context,
                                            NextScreen: GetStartedScreen());
                                      },
                                      text: 'SignUp',
                                      color: const Color(0xff2D3380),
                                      size: 14,
                                    ),
                                  ],
                                )
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
