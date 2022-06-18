import 'package:flutter/material.dart';

import '101/appbar.dart';
import '101/button_learn.dart';
import '101/container_sizedbox_learn.dart';
import '101/kendi_text_fieldim.dart';
import '101/scaffold_learn.dart';
import '101/text_learn_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Güzel Başlık',
      home: const AppBarLearnView(),
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
