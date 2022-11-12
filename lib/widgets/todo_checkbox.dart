import 'package:flutter/material.dart';

class TodoCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;

  const TodoCheckbox({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.brown,
    );
  }
}
