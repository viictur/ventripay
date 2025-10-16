import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:summer_flutter/lesson/todo/models/todo_model.dart';

class StorageService {
  static const String _todoKey = 'todos';

  //when the func is called, it will return a Future back to it immediately
  //and then when the func is done executing, it would then return a result

  static Future<List<TodoModel>> loadTodos() async {
    final pref = await SharedPreferences.getInstance();
    final todoJson = pref.getString(_todoKey);

    if (todoJson == null) return [];
    final List<dynamic> todoList = json.decode(todoJson);
    // for (var i in todoList) {
    //   final myList = [];
    //   myList.add(TodoModel.fromJson(i));
    // }
    return todoList
        .map((json) => TodoModel.fromJson(json))
        .toList();
  }

  static Future<void> savedTodos(
    List<TodoModel> todos,
  ) async {
    final pref = await SharedPreferences.getInstance();
    final todoJson = json.encode(
      todos.map((todo) => todo.toJson()).toList(),
    );
    // for (var i in todos) {
    //   print(i.toJson());
    // }
    await pref.setString(_todoKey, todoJson);
  }
}
