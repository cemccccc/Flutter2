import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Learn'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Text',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(), //renk vererek devam et
              onPressed: () {},
              child: const Text('Elevated'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                //servise istek at
                //sayfanın rengini düzenle
              },
              child: const Icon(Icons.add_shopping_cart_outlined),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const CircleBorder(),
              ),
              child: const Text('Outlined'),
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            Container(
              height: 100,
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ), //yuvarlama
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 40, left: 40),
                child: Text('Place Bid',
                    style: Theme.of(context).textTheme.headline4),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
