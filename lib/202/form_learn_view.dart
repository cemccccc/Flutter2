import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                return (value?.isNotEmpty ?? false)
                    ? null
                    : 'Bu alan boş geçilemez';
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
