import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_baslasin/202/service/postmodel.dart';

import 'my_post_model.dart';

class MyServiceView extends StatefulWidget {
  MyServiceView({Key? key}) : super(key: key);

  @override
  State<MyServiceView> createState() => _MyServiceViewState();
}

class _MyServiceViewState extends State<MyServiceView> {
  List<MyPostModel>? _items;
  String _baseURL = 'https://jsonplaceholder.typicode.com/';
  bool _isLoading = false;
  late final Dio _dio;

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseURL));
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/comments');

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;
      if (_data is List) {
        setState(() {
          _items = _data.map((e) => MyPostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvanced() async {
    _changeLoading();
    final response =
        await _dio.get('/comments');

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;
      if (_data is List) {
        setState(() {
          _items = _data.map((e) => MyPostModel.fromJson(e)).toList();
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
            _isLoading
                ? CircularProgressIndicator.adaptive()
                : SizedBox.shrink(),
          ],
          title: const Text('Service Test'),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: _items?.length ?? 0,
          itemBuilder: (context, index) {
            return _MyServiceCardWidget(model: _items?[index]);
          },
        ));
  }
}

class _MyServiceCardWidget extends StatelessWidget {
  const _MyServiceCardWidget({
    Key? key,
    required MyPostModel? model,
  })  : _model = model,
        super(key: key);

  final MyPostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: ListTile(
        title: Text(_model?.name ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
