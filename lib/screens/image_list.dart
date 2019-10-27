import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_module/screens/image.dart';

class ImageList extends StatelessWidget {
  String searchQuery;

  ImageList({this.searchQuery});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getImages(searchQuery),
      builder: null,
    );
  }
}

Future<Map> getImages(String searchQuery) async {
  final String apiKey = '12767634-de61c4a8d872248a18dce66ea';
  final String url =
      'https://pixabay.com/api/?key=$apiKey&q=$searchQuery&image_type=photo&pretty=true';
  final response = await http.get(url);
  final jsonResult = jsonDecode(response.body);

  return jsonResult;
}
