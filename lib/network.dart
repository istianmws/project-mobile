import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:project_mobile/model.dart';

String baseUrl = 'https://datasekolahapi.herokuapp.com/api/data';

class Data {
  Future<List<Sekolah>?> getData() async {
    List<Sekolah>? list;
    String url = '$baseUrl';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      //var result = data['SD'] as List;
      //var coba = data['SD']['Jakarta']['Jakarta_pusat'];
      //print(coba);

      var result = data['SD']['Jakarta']['Jakarta_pusat'] as List;

      print(result);
      list = result.map<Sekolah>((json) => Sekolah.fromJson(json)).toList();
      print("object");
      print(list);
      return list;
    } else {
      throw Exception('Cant get news data');
    }
  }
}