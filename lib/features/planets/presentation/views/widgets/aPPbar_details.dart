import 'package:flutter/material.dart';

class APPBarDetails extends StatelessWidget {
  const APPBarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);

      },
      icon: const Icon(Icons.arrow_back_ios),);
  }
}
