import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  NoteDemos({Key? key}) : super(key: key);

  final AppTexts firstText = AppTexts();
  final AppTexts secondText = AppTexts();
  final AppTexts elevatedButtonText = AppTexts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        title: Text(
          'Demo App',
          style: AppColors.blueColor,
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/book.png'),
          const SizedBox(height: 10),
          Text(
            firstText.textMain,
            style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              secondText.textSub,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade800, fontSize: 18),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 70,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade200,
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              child: Text(
                elevatedButtonText.elevatedText,
                style: const TextStyle(fontSize: 18, letterSpacing: 2),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                firstText.textLabel,
                style: TextStyle(color: Colors.blue.shade200, fontSize: 18),
              ))
        ],
      ),
    );
  }
}

class AppColors {
  static final blueColor =
      TextStyle(color: Colors.blue.shade100, fontWeight: FontWeight.bold);
}

class AppTexts {
  final String textMain = 'Create Your First Note';
  final String textSub =
      'Add a note about anything your thoughts\n on climate change, or your history essay and \n share it with the world.';
  final String elevatedText = 'Create A Note';
  final String textLabel = 'Import Notes';
}
