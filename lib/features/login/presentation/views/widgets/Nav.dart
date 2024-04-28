import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future navScreen({context, NextScreen}) => Navigator.push(
    context,
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 900),
      pageBuilder: (context, animation, secondAnimation) => NextScreen,
      transitionsBuilder: (context, animation, secondAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    ));
