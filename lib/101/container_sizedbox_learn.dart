import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.abc_sharp),
        backgroundColor: Colors.lime,
        title: const Text(
          'Container ve SizedBox',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox
              .shrink(), //bir component için boşluk olması gerekiyorsa kullanılır
          SizedBox.square(
            dimension: 50,
            child: Text('bbbbb' * 50),
          ),
          Container(
            //width: 50,
            height: 50,
            //color: Colors.red,
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 50, maxHeight: 100),
            child: Text('aa' * 100),
            padding: const EdgeInsets.all(10), //içerideki padding
            margin: const EdgeInsets.all(10), // dışarıdaki padding
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                boxShadow: [
                  BoxShadow(color: Colors.green, offset: Offset(0.1, 1))
                ],
                gradient: LinearGradient(colors: [Colors.red, Colors.white])
                //border: Border.all(width: 2, color: Colors.lime),
                ),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDec = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.red,
    boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
    gradient: const LinearGradient(colors: [Colors.red, Colors.white]),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
            gradient: const LinearGradient(colors: [Colors.red, Colors.white]));
}
