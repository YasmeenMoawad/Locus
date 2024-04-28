import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locus/features/login/presentation/logic/GetStartedCubit/get_started_cubit.dart';
import 'package:locus/features/login/presentation/views/welcome.dart';
import 'package:locus/features/login/presentation/views/widgets/Nav.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_button_widget.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_field_widget.dart';
import 'package:locus/features/login/presentation/views/widgets/auth_text_widget.dart';

class GetStartedScreen extends StatelessWidget {
  GlobalKey formState = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStartedCubit, GetStartedState>(
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
                          )))),
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
                                  text: 'Get Started',
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
                                      controller: name,
                                      type: 'Full name',
                                      text: 'Full name',
                                      icon: Icons.person,
                                      fontfamily: 'Josefin Sans',
                                      color: const Color(0xffC4C4C4),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    AuthTextFieldWidget(
                                      controller: email,
                                      type: 'Valid email',
                                      text: 'Valid email',
                                      icon: Icons.email,
                                      fontfamily: 'Josefin Sans',
                                      color: const Color(0xffC4C4C4),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const AuthTextFieldWidget(
                                      type: 'Birth Date',
                                      text: 'Birth Date',
                                      icon: Icons.calendar_today,
                                      fontfamily: 'Josefin Sans',
                                      color: Color(0xffC4C4C4),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    AuthTextFieldWidget(
                                      controller: password,
                                      type: 'Strong Password',
                                      text: 'Strong Password',
                                      icon: Icons.lock,
                                      fontfamily: 'Josefin Sans',
                                      color: const Color(0xffC4C4C4),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                state is GetStartedLoading
                                    ? ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: const Size(50, 50),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            backgroundColor:
                                                const Color(0xff2D3380)),
                                        child: const CircularProgressIndicator(
                                            color: Colors.white),
                                      )
                                    : ElevatedButton(
                                        onPressed: () {
                                          GetStartedCubit.get(context).Register(
                                              name: name.text,
                                              email: email.text,
                                              password: password.text,
                                              password_confirmation:
                                                  password.text,
                                              context: context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: const Size(50, 50),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            backgroundColor:
                                                const Color(0xff2D3380)),
                                        child: const Text(
                                          'Sign Up',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const AuthTextWidget(
                                      text: 'Already a member?',
                                      size: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      textAlign: TextAlign.center,
                                    ),
                                    AuthTextButtonWidget(
                                      onPressed: () {
                                        navScreen(
                                            context: context,
                                            NextScreen: WelcomeScreen());
                                      },
                                      text: 'Login',
                                      color: const Color(0xff2D3380),
                                      size: 14,
                                    ),

                                  ],
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
