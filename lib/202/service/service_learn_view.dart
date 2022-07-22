import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_baslasin/202/service/post_service.dart';
import 'package:flutter_baslasin/202/service/postmodel.dart';

class ServiceLearn extends StatefulWidget {
  ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items; // null gelebilir o yüzden ?
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseURL = 'https://jsonplaceholder.typicode.com/';

  late final PostService _postService;

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseURL));
    _postService = PostService();
    name = 'Cem';
    fetchPostItemsAdvance();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  void fetchPostItems() async {
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      if (_data is List) {
        setState(() {
          _items = _data.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  void fetchPostItemsAdvance() async {
    _changeLoading();
    _items = await _postService.fetchPostItemsAdvance();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name ?? ""),
          actions: [
            _isLoading
                ? CircularProgressIndicator.adaptive()
                : SizedBox.shrink()
          ],
        ),
        body: _items == null
            ? Placeholder()
            : ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount:
                    _items?.length ?? 0, //null data gelirse gösterme bir şey
                itemBuilder: (context, index) {
                  return _PostCard(model: _items?[index]);
                },
              ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
