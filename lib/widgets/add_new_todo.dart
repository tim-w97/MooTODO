import 'package:flutter/material.dart';
import 'package:moo_todo/models/todo.dart';
import 'package:moo_todo/providers/todos_provider.dart';
import 'package:provider/provider.dart';

class AddNewTodo extends StatelessWidget {
  const AddNewTodo({Key? key}) : super(key: key);

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
              Provider.of<TodosProvider>(context, listen: false).addNewTodo(
                Todo(text: todoTextController.text),
              );

              Navigator.pop(context);
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
