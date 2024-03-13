import 'package:flutter/material.dart';
import 'package:locus/features/navbar/presentation/views/nav_bar.dart';
import 'package:locus/features/onboarding/presentation/views/widgets/background.dart';
import '../../data/models/content_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;});},
        itemBuilder: (_, i) {
          return Stack(
            children: [
              const BackgroundImage(),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(contents[i].image,scale: 4,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height:309,
                    width:MediaQuery.of(context).size.width ,
                    decoration:    BoxDecoration(
                      color:const Color(0xff858585).withOpacity(0.4),
                      borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          contents[i].title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'JetBrains Mono',
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'JetBrains Mono',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 50,
                          width: 310,
                          child: MaterialButton(
                            onPressed: () {
                              if (currentIndex == contents.length - 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>  NavBar(),
                                  ),
                                );
                              }
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn,
                              );
                            },
                            color: const Color(0xff2D3380),
                            textColor:  Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                                currentIndex == contents.length - 1 ? "Continue" : "Next"),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                                (index) => buildDot(index, context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 10 : 10,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentIndex == index
            ?const Color(0xff2D3380)
        : const Color(0xffd9d9d9),
      ),
    );

  }
}

