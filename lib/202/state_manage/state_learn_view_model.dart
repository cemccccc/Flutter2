import 'package:flutter/cupertino.dart';
import 'package:flutter_baslasin/202/state_manage/state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = false;
  bool isOpacitiy = false;

  void changeVisibile() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacitiy = !isOpacitiy;
    });
  }
}

//abstract class oluşturduk ve state gücünü kullandık. Dolayısıyla view sayfasında 
//buradaki fonksiyonlarımı kullanabildim

//ekran yönetimi view içerisinden logicler modal içerisinden