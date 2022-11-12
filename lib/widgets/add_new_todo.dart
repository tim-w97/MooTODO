import 'package:flutter/material.dart';

class AddNewTodo extends StatelessWidget {
  const AddNewTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const TextField(
            autofocus: true,
            decoration: InputDecoration(
              fillColor: Colors.brown,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.brown),
              ),
            ),
          ),
          const SizedBox(height: 30),
          MaterialButton(
            onPressed: () {},
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
