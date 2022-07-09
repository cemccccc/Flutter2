import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({Key? key, required this.mesaj})
      : super(key: key);

  final String mesaj;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;
  @override
  void initState() {
    super.initState();
    _message = widget.mesaj;
    _isOdd = widget.mesaj.length.isOdd;

    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Çift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.mesaj.length.isOdd
            ? const Text('Kelime Tek')
            : const Text('Kelime çift'),
      ),
      body: widget.mesaj.length.isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
