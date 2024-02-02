import 'package:flutter/material.dart';

class CustomImageProfile extends StatelessWidget {
  const CustomImageProfile({
    super.key,
    this.backGroundColor,
    required this.profileImage,
  });
  final Color? backGroundColor;
  final ImageProvider profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: ShapeDecoration(
        color: backGroundColor,
        image: DecorationImage(
          image: profileImage,
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
