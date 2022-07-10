import 'package:flutter/material.dart';
import 'package:flutter_baslasin/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  ColorLifeCycleView({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(
                  () {
                    _backgroundColor = Colors.pink;
                  },
                );
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
            child: ColorDemosViewDemo(initialColor: _backgroundColor),
          ),
        ],
      ),
    );
  }
}
