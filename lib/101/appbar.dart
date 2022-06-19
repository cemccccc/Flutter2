import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome to Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        //backgroundColor: Colors.transparent,
        //elevation: 0, //arada katman yok gibi oluyor
        systemOverlayStyle: SystemUiOverlayStyle
            .light, //bildirim panelindeki renkleri değiştirir
        leadingWidth: 23, //soldaki ikonu ekrana yaklaştırır
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        //automaticallyImplyLeading:false, // otomatik olarak back butonu gelmesin
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
