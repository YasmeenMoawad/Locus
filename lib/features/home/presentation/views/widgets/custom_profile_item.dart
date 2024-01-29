import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileItem extends StatelessWidget {
  const CustomProfileItem({
    super.key,
    required this.prefixIcon,
    required this.title,
    required this.onTap,
    this.suffixIcon,
  });
  final String prefixIcon;
  final String title;
  final IconData? suffixIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height / 15,
        decoration: const BoxDecoration(
          color: Color(0xFF1D1F24),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 23.w),
              child: Image(image: AssetImage(prefixIcon)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.6,
              child: Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.w,
                    fontFamily: 'JetBrains Mono',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //     width: MediaQuery.of(context).size.width / 2.5),
            Expanded(
              child: Icon(
                suffixIcon,
                color: const Color(0xFF676D75),
                size: 15.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
