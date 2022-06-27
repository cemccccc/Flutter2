import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/appbar.dart';
import '101/button_learn.dart';
import '101/card_learn.dart';
import '101/color.learn.dart';
import '101/container_sizedbox_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/image.learn.dart';
import '101/indicator_learn.dart';
import '101/kendi_text_fieldim.dart';
import '101/list_tile_learn.dart';
import '101/padding_learn.dart';
import '101/scaffold_learn.dart';
import '101/stateless_learn.dart';
import '101/text_learn_view.dart';
import 'demos/note_demos_view_cem.dart';
import 'demos/note_demos_view_veli.dart';

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
      home: ListTileLearn(),
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
