import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle1,
    required this.subTitle12,
    required this.onTap,
    required this.subTitle1onTap,
    required this.subTitle2onTap,
  });

  final Widget icon;
  final String title;
  final String subTitle1;
  final String subTitle12;
  final void Function()? onTap;
  final void Function()? subTitle1onTap;
  final void Function()? subTitle2onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.all(0),
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'JetBrains Mono',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: subTitle1onTap,
              child: Text(
                subTitle1,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'JetBrains Mono',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: subTitle2onTap,
              child: Text(
                subTitle12,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'JetBrains Mono',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Divider(),
            ),
          ],
        )
      ],
    );
  }
}
