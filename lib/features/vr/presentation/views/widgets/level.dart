import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locus/core/widgets/mono_text.dart';

class Level extends StatelessWidget {
  const Level({Key? key,required this.numLevel, required this.imgLevel}) : super(key: key);

  final numLevel, imgLevel;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/4,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset(imgLevel, fit: BoxFit.fitWidth,),
          Center(child: MonoText(txt: numLevel, size: 18.sp, weight: FontWeight.w700)),
        ],
      ),
    );
  }
}
