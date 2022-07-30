import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_baslasin/202/animated_learn_view.dart';
import 'package:flutter_baslasin/202/theme/light_theme.dart';

import '101/column_row_learn.dart';
import '101/list_tile_learn.dart';
import '101/list_view_builder.dart';
import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import '101/page_view_learn.dart';
import '101/stack_learn.dart';
import '101/stateful_learn.dart';
import '101/statefull_lifecycle.dart';
import '101/text_field_learn.dart';
import '202/form_learn_view.dart';
import '202/image_learn_202.dart';
import '202/image_learn_202_2.dart';
import '202/model_learn_view.dart';
import '202/package/loading_bar.dart';
import '202/service/denemetest/my_service3.dart';
import '202/service/denemetest/myservice.dart';
import '202/service/package_learn_view.dart';
import '202/service/service_learn_view.dart';
import '202/service/service_post_learn_view.dart';
import '202/state_manage/state_manage_learn_view.dart';
import '202/tab_learn.dart';
import '202/theme_learn_view.dart';
import 'cem_demos/navigation_cem.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle.dart';
import 'demos/demos101finish/demos_2.dart';
import 'demos/demos101finish/demos_3.dart';
import 'demos/demos101finish/mainscreen.dart';
import 'demos/my_collections_demos.dart';
import 'demos/stack_demo_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,

      // ThemeData.dark().copyWith(
      //   bottomAppBarTheme:
      //       const BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //   tabBarTheme: const TabBarTheme(
      //       labelColor: Colors.black,
      //       unselectedLabelColor: Colors.grey,
      //       indicatorSize: TabBarIndicatorSize.tab),
      //   indicatorColor: Colors.white,
      //   iconTheme: const IconThemeData(color: Colors.black),
      //   progressIndicatorTheme: const ProgressIndicatorThemeData(
      //     //indicatorun rengini buradan okuyalım
      //     color: Colors.white,
      //     circularTrackColor: Colors.grey,
      //   ),
      //   cardTheme: CardTheme(
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //   ),
      //   appBarTheme: const AppBarTheme(
      //       centerTitle: true,
      //       iconTheme: IconThemeData(color: Colors.white),
      //       titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      //       //centerTitle: true,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //       backgroundColor: Colors.transparent,
      //       elevation: 0),
      // ),

      title: 'Güzel Başlık',
      home: FormLearnView(),
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
