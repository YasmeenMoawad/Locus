import 'package:flutter/material.dart';
import 'package:locus/features/calendar/presentation/views/calendar_view.dart';
import 'package:locus/features/chatbot_and_AI_generator/presentation/views/chatbot_AI_view_body.dart';
import 'package:locus/features/planets/presentation/views/planet.dart';
import 'package:locus/features/stars_classification/presentation/views/stars_view.dart';
import 'package:locus/features/vr/presentation/views/vr_view.dart';

import '../../../home/presentation/views/home_view.dart';

class Screens {
  List<Widget> navScreens = [
    ChatbotAIViewBody(),
    const CalendarView(),
    const HomeView(),
    const MyPlanetScreen(),
    const VRView(),
  ];
}
