import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color İnceleme'),
      ),
      body: Container(
        child: Text(
          'data',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Theme.of(context).errorColor),
        ),
      ),
    );
  }
}

class ColorsItem {
  static const Color indigoCarmine = Color(0xff056bc9);

  static const Color azuremystIsle = Color.fromARGB(255, 202, 140, 235);
}
