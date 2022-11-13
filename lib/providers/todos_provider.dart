import 'package:flutter/cupertino.dart';
import 'package:moo_todo/models/todo.dart';

class TodosProvider with ChangeNotifier {
  List<Todo> todos = [
    Todo(text: "Buy eggs"),
    Todo(text: "Buy milk"),
    Todo(text: "Buy cornflakes"),
  ];

  void addNewTodo(Todo todo) {
    todos.add(todo);
    notifyListeners();
  }

  void removeTodo(Todo todoToRemove) {
    todos.remove(todoToRemove);
    notifyListeners();
  }

  void setDoneStatus({required Todo of, required bool to}) {
    of.isDone = to;
    notifyListeners();
  }
}
