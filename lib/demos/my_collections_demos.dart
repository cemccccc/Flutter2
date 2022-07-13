import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  MyCollectionDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
        imagePath: ProjectImages.imageCollection,
        title: 'Abstract Art',
        price: 3.4,
      ),
      CollectionModel(
        imagePath: ProjectImages.imageCollection,
        title: 'Abstract Art2',
        price: 3.4,
      ),
      CollectionModel(
        imagePath: ProjectImages.imageCollection,
        title: 'Abstract Art3',
        price: 3.4,
      ),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art4',
          price: 3.4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingUtility().paddingHorizontal,
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _CategoryCard(model: _items[index]);
          },
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} eth'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 20.0);
  final paddingBottom = const EdgeInsets.only(bottom: 20.0);
  final paddingAll = const EdgeInsets.all(20.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20.0);
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
        imagePath: 'assets/icon_collection2.jpg',
        title: 'Abstract Art',
        price: 3.4,
      ),
      CollectionModel(
        imagePath: 'assets/icon_collection2.jpg',
        title: 'Abstract Art2',
        price: 3.4,
      ),
      CollectionModel(
        imagePath: 'assets/icon_collection2.jpg',
        title: 'Abstract Art3',
        price: 3.4,
      ),
      CollectionModel(
          imagePath: 'assets/icon_collection2.jpg',
          title: 'Abstract Art4',
          price: 3.4),
    ];
  }
}

class ProjectImages {
  static const imageCollection = 'assets/icon_collection2.jpg';
}
