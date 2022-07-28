import 'package:flutter/material.dart';
import 'package:flutter_baslasin/101/image.learn.dart';
import 'package:flutter_baslasin/101/text_learn_view.dart';
import 'package:flutter_baslasin/202/tab_learn.dart';

class AnimatedLearnView extends StatefulWidget {
  AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacitiy = false;
  late AnimationController controller;

  void _changeVisibile() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacitiy = !_isOpacitiy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _changeVisibile();
        controller.animateTo(_isVisible ? 1 : 0);
      }),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              opacity: _isOpacitiy ? 1 : 0,
              duration: _DurationItems.durationLow,
              child: const Text('data'),
            ),
            trailing: IconButton(
              onPressed: () {
                _changeOpacity();
              },
              icon: const Icon(Icons.precision_manufacturing_rounded),
            ),
          ),
          AnimatedDefaultTextStyle(
              child: const Text('data'),
              style: (_isVisible
                      ? context.textTheme().headline1
                      : context.textTheme().subtitle1) ??
                  const TextStyle(),
              duration: _DurationItems.durationLow),
          AnimatedIcon(
            icon: AnimatedIcons.ellipsis_search,
            progress: controller,
          ),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            height: _isVisible ? 50 : MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
            color: Colors.blue,
            margin: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const ImageLearn(),
      secondChild: const TextLearnView(),
      duration: _DurationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

// AnimatedCrossFade iki view arasında değişiklik yapar
// AnimatedOpacity opasity değerlerini değiştiri ve aralarında geçişi sağlar
// AnimatedIcon ikonları birbirine yumuşak halde geçiştirir

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
  static const durationHigh = Duration(seconds: 5);
}
