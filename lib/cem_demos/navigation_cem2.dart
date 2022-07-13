import 'package:flutter/material.dart';
import 'package:flutter_baslasin/cem_demos/navigation_cem.dart';

class ContainerDetailedPage extends StatefulWidget {
  ContainerDetailedPage({Key? key}) : super(key: key);

  @override
  State<ContainerDetailedPage> createState() => _ContainerDetailedPageState();
}

class _ContainerDetailedPageState extends State<ContainerDetailedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ProjectConstants.appbarTitle),
      ),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            icon: const Icon(Icons.turn_left),
            label: const Text('Tıkla Geri Git')),
      ),
    );
  }
}
