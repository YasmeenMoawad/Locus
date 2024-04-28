import 'package:flutter/material.dart';
import 'package:locus/features/planets/data/models/details.dart';
import 'package:locus/features/planets/presentation/views/widgets/aPPbar_details.dart';
import 'package:locus/features/planets/presentation/views/widgets/customdiscription.dart';
class PlanetDetail extends StatefulWidget {
  const PlanetDetail({
    super.key,
    required this.planets,
  });
  final Planet planets;
  @override
  State<PlanetDetail> createState() => _PlanetDetailState();
}

class _PlanetDetailState extends State<PlanetDetail> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          controller: _controller,
          children: [Column(
            children: [
              Stack(
                children: [
                  Image.asset(widget.planets.background, fit: BoxFit.cover),

                  //appBar
                  const APPBarDetails(),

                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        widget.planets.image,
                        scale: 6,
                      ),
                      Text(
                        widget.planets.title,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'JosefinSans-Bold',
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),

                      CustomDiscription(
                        widget: widget,
                        text: widget.planets.discription,
                      ),
                      CustomDiscription(
                        widget: widget,
                        text: widget.planets.discription1,
                      ),

                      CustomDiscription(
                        widget: widget,
                        text: widget.planets.discription2,
                      ),

                      CustomDiscription(
                        widget: widget,
                        text: widget.planets.discription3,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),]
        ),
      ),
    );
  }
}

