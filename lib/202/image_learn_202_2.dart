import 'package:flutter/material.dart';

class ImageLearn202test extends StatefulWidget {
  ImageLearn202test({Key? key}) : super(key: key);

  @override
  State<ImageLearn202test> createState() => _ImageLearn202testState();
}

class _ImageLearn202testState extends State<ImageLearn202test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageLearn202'),
      ),
      body: ImageAsset.apple.toWidget(),
    );
  }
}

enum ImageAsset { apple, man, woman, bell, cem, circle }

extension ImageAssetExtension on ImageAsset {
  String path() {
    return 'assets/$name.png';
  }

  Widget toWidget() {
    return Image.asset(path());
  }
}
