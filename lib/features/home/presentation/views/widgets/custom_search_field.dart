import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: const Color.fromARGB(166, 85, 85, 87),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          contentPadding: const EdgeInsets.all(0)),
    );
  }
}
