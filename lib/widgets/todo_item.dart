import 'package:flutter/material.dart';
import 'package:moo_todo/widgets/todo_checkbox.dart';

class TodoItem extends StatelessWidget {
  final String text;
  final bool isDone;
  final Function(bool?)? onChanged;

  const TodoItem({
    Key? key,
    required this.text,
    this.isDone = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: isDone ? Colors.brown.shade400 : Colors.brown,
            decoration: isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        const Spacer(),
        TodoCheckbox(
          value: isDone,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
