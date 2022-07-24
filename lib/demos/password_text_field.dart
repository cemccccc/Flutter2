import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, this.controller}) : super(key: key);
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obscureText = '*';

  bool _isSecured = true;

  void _changeLoading() {
    setState(() {
      _isSecured = !_isSecured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: const [AutofillHints.password],
      obscureText: _isSecured,
      obscuringCharacter:
          _obscureText, // gizli karakterlerin nasıl gösterileceği
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: 'Password',
        //suffixIcon: Text('a'), text içerisine suffix
        suffix: _onVisibilityIcon(),
      ),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
        onPressed: () {
          _changeLoading();
        },
        icon: Icon(_isSecured ? Icons.visibility : Icons.visibility_off));
  }
}
