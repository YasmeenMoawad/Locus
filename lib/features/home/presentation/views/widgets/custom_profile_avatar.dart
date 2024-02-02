import 'package:flutter/material.dart';

class CustomProfileAvatar extends StatelessWidget {
  const CustomProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 58,
          backgroundColor: Color(0xFF4D507B),
          child: CircleAvatar(
            radius: 56,
            backgroundImage:
                AssetImage('assets/images/profile_background.png'),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF4D507B),
              backgroundImage: AssetImage('assets/images/profile_default.png'),
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color(0xFF1D1F24),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  50,
                ),
              ),
              color: const Color(0xFF1D1F24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.4),
              // child: IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Color(0xFF676D75))),
              child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.add, color: Color(0xFF676D75))),
            ),
          ),
        ),
      ],
    );
  }
}
