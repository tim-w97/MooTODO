import 'package:flutter/material.dart';
import 'package:moo_todo/providers/todos_provider.dart';
import 'package:moo_todo/widgets/todo_item.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodosProvider>(context).todos;

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];

        return TodoItem(todo: todo);
      },
    );
  }
}
