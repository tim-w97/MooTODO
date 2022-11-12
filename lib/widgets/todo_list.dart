import 'package:flutter/material.dart';
import 'package:moo_todo/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TodoItem(),
        TodoItem(),
        TodoItem(),
        TodoItem(),
        TodoItem(),
      ],
    );
  }
}
