import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget with PaddingStyle {
  IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgress()],
      ),
      body: Padding(
        padding: paddingo,
        child: const Center(
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class PaddingStyle {
  final paddingo = const EdgeInsets.symmetric(horizontal: 20.0);
}
