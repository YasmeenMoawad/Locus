import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF303234), width: 5),
            image: const DecorationImage(
              image: AssetImage('assets/images/new1.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 8),
            child: const Text(
              'Webb Reveals New Details in Pillars of Creation',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'JetBrains Mono',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
