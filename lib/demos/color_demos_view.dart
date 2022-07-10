/*
bir ekranda 3 buton olacak ve basıldıkça renk değiştirecek
seçili olan buton selected icon olacak
*/

import 'package:flutter/material.dart';

class ColorDemosViewDemo extends StatefulWidget {
  ColorDemosViewDemo({Key? key, required this.initialColor}) : super(key: key);

  final Color? initialColor;

  @override
  State<ColorDemosViewDemo> createState() => _ColorDemosViewDemoState();
}

class _ColorDemosViewDemoState extends State<ColorDemosViewDemo> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorsOnTap,
        items: const [
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.red), label: 'Red'),
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
        ],
      ),
    );
  }

  void _colorsOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}
