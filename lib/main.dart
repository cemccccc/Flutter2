import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/column_row_learn.dart';
import '101/page_view_learn.dart';
import '101/stack_learn.dart';
import '101/stateful_learn.dart';
import '101/statefull_lifecycle.dart';
import '101/text_field_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle.dart';
import 'demos/stack_demo_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          //indicatorun rengini buradan okuyalım
          color: Colors.white,
          circularTrackColor: Colors.grey,
        ),
        cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0),
      ),
      title: 'Güzel Başlık',
      home: ColorLifeCycleView(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Cem',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
