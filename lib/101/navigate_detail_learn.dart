import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  NavigateDetailLearnDart({Key? key}) : super(key: key);

  @override
  State<NavigateDetailLearnDart> createState() => _NavigateLearnDartState();
}

class _NavigateLearnDartState extends State<NavigateDetailLearnDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.check),
          label: const Text('Onayla'),
        ),
      ),
    );
  }
}
