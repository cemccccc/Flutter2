import 'package:flutter/material.dart';

class WidgetSizeEnumLearn extends StatefulWidget {
  WidgetSizeEnumLearn({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearn> createState() => _WidgetSizeEnumLearnState();
}

class _WidgetSizeEnumLearnState extends State<WidgetSizeEnumLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: SizedBox(
          height: WidgetSizes.normalCardHeight.value(),
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}
