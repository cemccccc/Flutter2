import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

class LoadingBar extends StatelessWidget {
  LoadingBar({Key? key, this.size}) : super(key: key);

  final Uri _url = Uri.parse('https://coolors.co/gradients');

  final double? size;
  final _defaultSize = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _launchUrl();
        },
      ),
      appBar: AppBar(
        title: const Text('Theme Uygulamaları'),
      ),
      body: Column(
        children: [
          Text(
            'a',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SpinKitPianoWave(
            color: Colors.red,
            size: size ?? _defaultSize,
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
