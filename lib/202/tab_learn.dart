import 'package:flutter/material.dart';
import 'package:flutter_baslasin/101/icon_learn.dart';
import 'package:flutter_baslasin/101/image.learn.dart';

class TabLearn extends StatefulWidget {
  TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true, // floatingacbutonun etrafını saydamlaştırır
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            }),
        bottomNavigationBar: BottomAppBar(
          notchMargin:
              _notchedValue, // floatingacbuton etrafındaki boşluk margini
          child: myTabBarView(),
        ),
        appBar: AppBar(),
        body: tabBarView(),
      ),
    );
  }

  TabBar myTabBarView() {
    return TabBar(
        controller: _tabController,
        tabs: _MyTabViews.values
            .map((e) => Tab(
                  text: '${e.name}',
                ))
            .toList());
  }

  TabBarView tabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        const ImageLearn(),
        IconLearnView(),
        const ImageLearn(),
        IconLearnView()
      ],
    );
  }
}

enum _MyTabViews {
  home,
  settings,
  favorite,
  profile,
}

extension _MyTabViewExtension on _MyTabViews {}

