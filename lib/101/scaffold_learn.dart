import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*   leading: const Icon(
          Icons.access_time_filled,
          color: Colors.grey,
          size: 36,
        ), */
        centerTitle: true,
        title: const Text(
          'Scaffold Samples',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      ),
      body: const Text('Merhaba'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.sunny),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      drawer:
          const Drawer(), //appbara 3 çizgi çekip ekranın soldan açılmasını sağlıyor
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Kar',
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            label: 'Kalbim Kırıldı',
            icon: Icon(Icons.heart_broken),
          ),
        ],
      ),
    );
  }
}
