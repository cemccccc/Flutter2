import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_baslasin/202/service/denemetest/my_post_model3.dart';

class MyService3 extends StatefulWidget {
  MyService3({Key? key}) : super(key: key);

  @override
  State<MyService3> createState() => __MyService2State();
}

class __MyService2State extends State<MyService3> {
  List<MyPostModel3>? _items;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  bool _isLoading = false;
  late final Dio _dio;

  @override
  void initState() {
    fetchPostItems();
    super.initState();
  }

  void _changeLoading() {
    _isLoading = !_isLoading;
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      if (_data is List) {
        setState(() {
          _items = _data.map((e) => MyPostModel3.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
        ],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(_items?[index].title ?? ""),
              subtitle: Text(_items?[index].body ?? ""),
            ),
          );
        },
      ),
    );
  }
}
