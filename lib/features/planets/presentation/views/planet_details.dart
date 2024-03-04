import 'package:flutter/material.dart';
import 'package:locus/constants/colors.dart';
import 'package:locus/features/planets/data/models/details.dart';
import 'package:locus/features/planets/presentation/views/planet.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyPlanetScreen()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        widget.planets.background,
                      )),
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    widget.planets.image,
                    scale: 5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.planets.title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'JetBrains Mono',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomDiscription(
                    widget: widget,
                    text: widget.planets.discription,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  
                  CustomDiscription(
                    widget: widget,
                    text: widget.planets.discription1,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  CustomDiscription(
                    widget: widget,
                    text: widget.planets.discription2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomDiscription(
                    widget: widget,
                    text: widget.planets.discription3,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
