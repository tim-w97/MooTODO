import 'package:flutter/material.dart';
import 'package:moo_todo/widgets/todo_checkbox.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "a Dummy TODO item",
          style: TextStyle(
            fontSize: 20,
            color: isDone ? Colors.brown.shade400 : Colors.brown,
            decoration: isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        const Spacer(),
        TodoCheckbox(
            value: isDone,
            onChanged: (newValue) {
              setState(() => isDone = newValue ?? false);
            }),
      ],
    );
  }
}
