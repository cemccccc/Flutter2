import 'package:flutter/material.dart';
import 'package:flutter_baslasin/101/icon_learn.dart';
import 'package:flutter_baslasin/101/image.learn.dart';
import 'package:flutter_baslasin/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 1.4);
  int _currentPageIndex = 0;

  void _UpdatePageINdex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              _currentPageIndex.toString(),
              style: TextStyle(fontSize: 26),
            ),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.bounceOut);
            },
            child: const Icon(Icons.arrow_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.easeInCirc);
            },
            child: const Icon(Icons.arrow_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        onPageChanged: _UpdatePageINdex,
        padEnds: false,
        controller: _pageController,
        children: [
          const ImageLearn(),
          IconLearnView(),
          const StackLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = const Duration(seconds: 1);
}
