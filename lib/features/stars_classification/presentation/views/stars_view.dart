import 'package:flutter/material.dart';
import 'package:locus/features/stars_classification/presentation/views/widgets/loading.dart';

class StarsView extends StatelessWidget {
  const StarsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Loading(),
    );
  }
}
