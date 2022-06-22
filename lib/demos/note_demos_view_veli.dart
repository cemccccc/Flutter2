import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_baslasin/demos/note_demos_view_cem.dart';

class NoteDemos2 extends StatelessWidget {
  NoteDemos2({Key? key}) : super(key: key);

  final title = 'Create Your First Note';
  final AppTexts subText = AppTexts();
  final _createNote = 'Create a Note';
  final _importNote = 'Import Note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Image.asset('assets/book.png'),
            _TitleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(subText: subText),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            const SizedBox(
              height: ButtonHeight.buttonNormalHeight,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeight.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

//centered text widget
class _SubtitleWidget extends StatelessWidget {
  _SubtitleWidget(
      {Key? key, required this.subText, this.textAlign = TextAlign.center})
      : super(key: key);

  final TextAlign textAlign;
  final AppTexts subText;

  @override
  Widget build(BuildContext context) {
    return Text(
      subText.textSub,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.black,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
