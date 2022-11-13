import 'package:flutter/material.dart';
import 'package:moo_todo/models/todo.dart';
import 'package:moo_todo/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  final Function(Todo, bool) onTodoChecked;

  const TodoList({
    Key? key,
    required this.todos,
    required this.onTodoChecked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];

        return TodoItem(
          text: todo.text,
          isDone: todo.isDone,
          onChanged: (newValue) {
            onTodoChecked(todo, newValue ?? false);
          },
        );
      },
    );
  }
}
