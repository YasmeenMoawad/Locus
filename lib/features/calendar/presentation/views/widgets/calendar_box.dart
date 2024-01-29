import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locus/constants/styles.dart';
import 'package:locus/generated/assets.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarBox extends StatelessWidget {
  const CalendarBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 450,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF1D1F24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        TableCalendar(
          rowHeight: 50.h,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
          calendarFormat: CalendarFormat.month,
          startingDayOfWeek: StartingDayOfWeek.sunday,
          daysOfWeekHeight: 30.h,
          headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleTextStyle: Style().popExtra,
              titleCentered: true,
              headerMargin: EdgeInsets.only(bottom: 8.h),
              leftChevronIcon: SvgPicture.asset(Assets.imagesChevronLeft),
              rightChevronIcon: SvgPicture.asset(Assets.imagesChevronRight),
              formatButtonShowsNext: true
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: Style().popDays,
            weekendStyle: Style().popDays,
          ),
          calendarStyle: CalendarStyle(
              defaultTextStyle: Style().popNumDays,
              weekendTextStyle: Style().popNumDays,
              todayTextStyle: Style().today,
              todayDecoration: const BoxDecoration(
                  color: Colors.transparent
              ),
              tablePadding: const EdgeInsets.all(20),
              tableBorder: TableBorder(
                borderRadius: BorderRadius.circular(15),
              )
          ),
        ),
        Divider(
          color: const Color(0xFFE5E5E5),
          thickness: 0.8,
          indent: MediaQuery.of(context).size.width/20,
          endIndent: MediaQuery.of(context).size.width/20,
          height: MediaQuery.of(context).size.height/5,
        )
      ],
    );
  }
}
