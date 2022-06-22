import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPaddings.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(color: Colors.white, height: 100),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text('Ali'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPaddings {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10.0);
}
