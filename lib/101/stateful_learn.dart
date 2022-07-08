import 'package:flutter/material.dart';
import 'package:flutter_baslasin/product/language/language_items.dart';

import '../product/counter_hello_button.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;

  void _updateCount(bool isIncrement) {
    if (isIncrement) {
      _countValue++;
    } else {
      _countValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tıklanma Sayısı: ${_countValue.toString()}',
                style: TextStyles().styleOfText),
            CounterHelloButton(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      child: const Icon(Icons.plus_one),
      onPressed: () {
        _updateCount(true);
      },
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: FloatingActionButton(
        child: const Icon(Icons.exposure_minus_1),
        onPressed: () {
          _updateCount(false);
        },
      ),
    );
  }
}

class _CounterHelloButton {}

class TextStyles {
  final TextStyle styleOfText =
      const TextStyle(fontSize: 26, fontWeight: FontWeight.bold);
}
