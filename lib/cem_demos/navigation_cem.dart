import 'package:flutter/material.dart';

import 'navigation_cem2.dart';

class NavigationCem extends StatefulWidget {
  NavigationCem({Key? key}) : super(key: key);

  @override
  State<NavigationCem> createState() => _NavigationCemState();
}

class _NavigationCemState extends State<NavigationCem> with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            ProjectConstants.appbarTitle,
            style: ProjectHeadline().textStyleCem,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final response = await elevatedButtonFuncNormal<bool>(
                context, ContainerDetailedPage());
          },
          child: const Icon(Icons.account_balance),
        ),
        body: TextButton(
          onPressed: () async {
            final response = await elevatedButtonFuncNormal<bool>(
                context, ContainerDetailedPage());
          },
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Placeholder(
                    color: selectedItems.contains(index)
                        ? Colors.green
                        : Colors.red),
              );
            },
          ),
        ));
  }
}

class ProjectConstants extends ContainerDetailedPage {
  static const String appbarTitle = 'Navigation Deneme';
  static const String elevatedButtonText = 'Tıkla Gelsin';
}

class ProjectHeadline {
  final textStyleCem = const TextStyle(fontSize: 24);
}

mixin NavigatorManager {
  void elevatedButtonFunc(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}

Future<T?> elevatedButtonFuncNormal<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T>(
    MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ),
  );
}
