import 'package:flutter/material.dart';
import 'package:flutter_baslasin/101/image.learn.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index) {
    selectedItems.add(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await navigateToWidgetNormal<bool>(
              context, NavigateDetailLearnDart());

          if (response == true) {}
        },
        child: const Icon(Icons.navigate_next),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Placeholder(
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true, //gidilen ekranda geri ikonu değil çarpı çıkar
      ),
    );
  }
}

Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T>(
    MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true, //gidilen ekranda geri ikonu değil çarpı çıkar
    ),
  );
}



