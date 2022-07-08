import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  StatefulLifeCycleLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}