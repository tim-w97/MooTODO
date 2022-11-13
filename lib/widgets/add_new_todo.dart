import 'package:flutter/material.dart';

class AddNewTodo extends StatelessWidget {
  final Function(String) onAddNewTodo;

  const AddNewTodo({
    Key? key,
    required this.onAddNewTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoTextController = TextEditingController();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 30),
          Text(
            "What do you have to do?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.brown.shade800,
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            controller: todoTextController,
            autofocus: true,
            decoration: const InputDecoration(
              fillColor: Colors.brown,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.brown),
              ),
            ),
          ),
          const SizedBox(height: 30),
          MaterialButton(
            onPressed: () {
              onAddNewTodo(todoTextController.text);
            },
            color: Colors.brown.shade300,
            shape: const StadiumBorder(),
            child: Text(
              "Add new TODO",
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown.shade800,
              ),
            ),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
