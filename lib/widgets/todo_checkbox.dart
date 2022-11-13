import 'package:flutter/material.dart';

class TodoCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function() onTap;

  const TodoCheckbox({Key? key, required this.isChecked, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        "assets/images/checkbox_${isChecked ? "checked" : "unchecked"}.png",
        width: 40,
      ),
    );
  }
}
