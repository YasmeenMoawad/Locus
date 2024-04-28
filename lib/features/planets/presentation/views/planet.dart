import 'package:flutter/material.dart';
import 'package:locus/features/planets/presentation/views/planet_details.dart';
import '../../data/models/details.dart';

class MyPlanetScreen extends StatefulWidget {
  const MyPlanetScreen({super.key});

  @override
  State<MyPlanetScreen> createState() => _MyPlanetScreenState();
}

class _MyPlanetScreenState extends State<MyPlanetScreen>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  List<Planet> planetlist = planetList;

  double get _currentOffset {
    bool inited = _pageController.hasClients &&
        _pageController.position.hasContentDimensions;
    return inited ? _pageController.page! : _pageController.initialPage * 1.0;
  }

  int get _currentIndex => _currentOffset.round() % planetlist.length;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: planetlist.length * 9999,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          return _buildScreen();
        },
      ),
    );
  }

  Stack _buildScreen() {
    final Size size = MediaQuery.of(context).size;
    final Planet _currentplanet = planetlist[_currentIndex];
    return Stack(
      alignment: Alignment.center,
      children: [
        /* BgImage(
          currentIndex: _currentIndex,
          planet: _currentplanet,
          pageOffset: _currentOffset,
        ),*/
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/background.png',

                  // widget.planets.background,
                )),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(
              '${_currentplanet.name}',
              style: const TextStyle(
                fontFamily: 'Spike Speak Straight',
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.width,
              child: ListView.builder(
                itemCount: planetlist.length,
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                reverse: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlanetDetail(
                                    planets: planetlist[index],
                                  )));
                    },
                    child: Image.asset(
                      planetlist[index % planetlist.length].image,
                      scale: 4,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
