import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          height: 1,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(
              'assets/images/search_icon.svg',
            ),
          ),
          prefixIconColor: Colors.white,
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Color(0xFFD0D0D0),
            fontSize: 12,
            fontFamily: 'JetBrains Mono',
            fontWeight: FontWeight.w300,
          ),
          filled: true,
          fillColor: const Color.fromARGB(166, 85, 85, 87),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }
}
