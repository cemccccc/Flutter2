import 'package:flutter/material.dart';

class TextFieldOfMine extends StatelessWidget {
  const TextFieldOfMine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget of Mine'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, left: 8, right: 8, bottom: 12),
              child: TextField(
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.purple,
                    ),
                    hintText:
                        'Search for anything'), // hinttext değişken olacak. Sözlük türü seçimine göre yazı değişecek
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Çalıştır'),
            ),
          ],
        ),
      ),
    );
  }
}
