import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "a Dummy TODO item",
          style: TextStyle(
            fontSize: 20,
            color: Colors.brown.shade800,
          ),
        ),
        const Spacer(),
        Checkbox(value: false, onChanged: (newValue) {}),
      ],
    );
  }
}
