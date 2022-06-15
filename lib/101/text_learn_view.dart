import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, this.userName}) : super(key: key);

  final String name = 'Cem';

  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //column center olur
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2, // satırlar arası boşluk
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right, // text yaslama
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor),
            ),
            Text(userName ?? ' '), //null check
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      height: 1.5,
      color: Colors.lime,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}
