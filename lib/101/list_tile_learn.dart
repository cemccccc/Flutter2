import 'package:flutter/material.dart';

import '../core/random_image.dart';


class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  final imageUrl = 'https://picsum.photos/seed/picsum/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
              8.0), //Listtiletheme'den edgeinset.zero yaparsan tüm paddingler sıfırlanır. Sonrasında istediğin gibi kullanabilirsin
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: RandomImage(),
                  onTap: () {},
                  subtitle: const Text('What is going on?'),
                  leading: const Icon(Icons.money),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
