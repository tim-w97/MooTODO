import 'package:flutter/material.dart';
import 'package:moo_todo/models/todo.dart';
import 'package:moo_todo/providers/todos_provider.dart';
import 'package:moo_todo/widgets/todo_checkbox.dart';
import 'package:provider/provider.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodosProvider>(
      builder: (context, todosProvider, child) {
        return Row(
          children: [
            Text(
              todo.text,
              style: TextStyle(
                fontSize: 20,
                color: todo.isDone ? Colors.brown.shade400 : Colors.brown,
                decoration: todo.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            const Spacer(),
            TodoCheckbox(
              value: todo.isDone,
              onChanged: (newValue) {
                if (newValue == null) return;

                todosProvider.setDoneStatus(of: todo, to: newValue);
              },
            ),
            IconButton(
              onPressed: () {
                todosProvider.removeTodo(todo);
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.brown,
              ),
            ),
          ],
        );
      },
    );
  }
}
