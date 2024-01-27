import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final Widget icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 5,
      contentPadding: const EdgeInsets.all(0),
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white.withOpacity(0.800000011920929),
          fontSize: 12,
          fontFamily: 'Roboto Flex',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
