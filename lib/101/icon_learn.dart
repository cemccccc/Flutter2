import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);

  final IconSizes iconSize = IconSizes();

  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColors.treasuredLove,
              size: iconSize.iconSmall,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColors.treasuredLove,
              size: IconSizes.iconSmall2x,
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
}

class IconColors {
  final Color treasuredLove = const Color(0xFFb92775);
}
