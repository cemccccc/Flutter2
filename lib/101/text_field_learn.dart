import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            focusNode: focusNodeTextFieldOne,
            //inputFormatters: [TextProjectInputFormatter()._formatter],
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple)),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.mail),
                hintText: 'Mail',
                labelText: 'Cem',
                focusColor: Colors.purple,
                hoverColor: Colors.purple),
          ),
          TextField(
            focusNode: focusNodeTextFieldTwo,
          ),
        ],
      ),
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction(
    (oldValue, newValue) {
      if (newValue.text == 'b') {
        return oldValue;
      } else {
        return oldValue;
      }
    },
  );
}
