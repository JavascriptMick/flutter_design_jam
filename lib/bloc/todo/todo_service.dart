import 'dart:convert';

import 'package:flutter_design_jam/bloc/todo/todo_model.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class TodoAPIService {
  static const _baseUrl = 'https://jsonplaceholder.typicode.com';
  static final DateFormat formatter = DateFormat('yyyy-MM-dd');

  static Future<List<Todo>> getTodos() async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl/todos'));

      if (response.statusCode == 200) {
        //ignore: avoid_print
        print('todos response body: ${response.body}}');
        return (jsonDecode(response.body) as List)
            .map((i) => Todo.fromJson(i))
            .toList();
      } else {
        // ignore: avoid_print
        print('API Error - Status Code: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error: $e');

      return [];
    }
  }
}
