import 'package:flutter/material.dart';
import 'package:flutter_baslasin/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel8 user9 = PostModel8(body: 'a');

  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()
      ..userId = 1
      ..body = 'cyo';
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'title', 'body');

    final user3 = PostModel3(3, 4, 'title', 'body');
    //user3.body = 'a' yapamazsın çünkü final tanımlandı. Değiştiremezsin

    final user4 = PostModel4(
        userId: 2,
        id: 2,
        title: 'title',
        body: 'body'); //named parameter şeklinde geldi
//user4.body='A'; değiştiremezsin

    final user5 = PostModel5(userId: 5, id: 6, title: 'title', body: 'body');
    //user5. bu kısma hiç nesne gelmez çünkü private kullandık
    user5.userId; // kendi belirlediğim kurallar dahilinde kullanabilir

    final user6 = PostModel6(userId: 1, id: 2, title: 'a', body: 'body');

    final user7 = PostModel7();

    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'cem');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Data yok'),
      ),
    );
  }
}
