import 'package:flutter/material.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/core/widgets/appbar.dart';
import 'package:locus/core/widgets/custom_drawer.dart';
import 'package:locus/core/widgets/img_bg.dart';
import 'package:locus/features/calendar/presentation/views/widgets/calendar_box.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Stack(
      children: [
        const ImgBG(shadowColor: LocusColors.shadowOfBG),
        Scaffold(
          key: scaffoldKey,
            backgroundColor: Colors.transparent,
          appBar: CustomizedAppBar(sKey: scaffoldKey,
              isNotification: false),
          drawer: const CustomizedDrawer(),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: const [
              CalendarBox(),
            ],
          ),
        ),
      ],
    );
  }
}
