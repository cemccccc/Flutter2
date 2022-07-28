import 'package:flutter/material.dart';
import 'package:flutter_baslasin/demos/password_text_field.dart';

class ThemeLearnView extends StatefulWidget {
  ThemeLearnView({Key? key}) : super(key: key);

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const PasswordTextField(),
          CheckboxListTile(
            title: const Text('Select'),
            value: true,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
