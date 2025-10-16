import 'package:flutter/material.dart';
import 'package:summer_flutter/lesson/todo/models/todo_model.dart';
import 'package:summer_flutter/lesson/todo/service/storage_service.dart';

class TodoProvider extends ChangeNotifier {
  List<TodoModel> _todos = [];
  bool isLoading = false;

  List<TodoModel> get todo => _todos;

  Future<void> loadTodos() async {
    try {
      isLoading = true;
      notifyListeners();
      _todos = await StorageService.loadTodos();
    } catch (e) {
      debugPrint('An error occurred: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addTodo(String title) async {
    if (title.isEmpty) return;
    final todo = TodoModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title.trim(),
    );
    _todos.add(todo);
    notifyListeners();
    await saveTodos();
  }

  Future<void> deleteTodo(String id) async {
    // for (var i in _todos) {
    //   if (i.id == id) {
    //     _todos.remove(i);
    //   }
    // }
    _todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
    await saveTodos();
  }

  Future<void> toggleTodo(String id) async {
    final index = _todos.indexWhere(
      (value) => value.id == id,
    );
    if (index == -1) return;

    _todos[index].isCompleted = !_todos[index].isCompleted;

    notifyListeners();
    await saveTodos();
  }

  Future<void> saveTodos() async {
    try {
      await StorageService.savedTodos(_todos);
    } catch (e) {
      debugPrint('An error occurred: $e');
    }
  }
}
