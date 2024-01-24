import 'package:flutter/material.dart';
import 'package:locus/features/calendar/presentation/views/calendar_view.dart';
import 'package:locus/features/chatbot/presentation/views/chatbot_view.dart';
import 'package:locus/features/stars_classification/presentation/views/stars_view.dart';
import 'package:locus/features/vr/presentation/views/vr_view.dart';
class Screens{
  List<Widget> navScreens = [
    const ChatbotView(),
    const CalendarView(),
    const StarsView(),
    const VRView(),
  ];
}